import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ticket_tree_client/infrastructure/loging-events/event_logger.dart';

import '../../domain/favorites/i_favorites_repository.dart';
import '../../domain/favorites/entities/favorites.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc(IFavoritesRepository favoritesRepository)
      : super(const _Initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.map(
        started: (e) async {},
        getFavorites: (e) async {
          emit(const FavoritesState.loading());
          final favorites = await favoritesRepository.getFavorites(e.uid);
          emit(favorites.fold(
            (failure) => failure.map(
                serverError: (_) => const FavoritesState.error('Server Error')),
            (favs) => FavoritesState.loaded(favs),
          ));
        },
        addEventToFavorites: (e) async {
          AnalyticsService().logEvent(
              name: "add favorite event",
              parameters: {"eventId": e.eventId, "user id": e.uid});

          final result = await favoritesRepository.addEventToFavorites(
              uid: e.uid, eventId: e.eventId);
          result.fold(
            (failure) => failure.map(
                serverError: (_) =>
                    emit(const FavoritesState.error('Server Error'))),
            (_) => state.mapOrNull(
                loaded: (value) => emit(FavoritesState.loaded(value.favorites
                    .copyWith(
                        eventIds: [...value.favorites.eventIds, e.eventId])))),
          );
        },
        removeEventFromFavorites: (e) async {
          AnalyticsService().logEvent(
              name: "remove favorite event",
              parameters: {"eventId": e.eventId, "user id": e.uid});

          final result = await favoritesRepository.removeEventFromFavorites(
              uid: e.uid, eventId: e.eventId);
          result.fold(
            (failure) => failure.map(
                serverError: (_) =>
                    emit(const FavoritesState.error('Server Error'))),
            (_) => state.mapOrNull(
                loaded: (value) => emit(FavoritesState.loaded(value.favorites
                    .copyWith(
                        eventIds: value.favorites.eventIds
                            .where((id) => id != e.eventId)
                            .toList())))),
          );
        },
        addVenueToFavorites: (e) async {
          AnalyticsService().logEvent(
              name: "add venue event",
              parameters: {"eventId": e.venueId, "user id": e.uid});

          final result = await favoritesRepository.addVenueToFavorites(
              uid: e.uid, venueId: e.venueId);
          result.fold(
            (failure) => failure.map(
                serverError: (_) =>
                    emit(const FavoritesState.error('Server Error'))),
            (_) => state.mapOrNull(
                loaded: (value) => emit(FavoritesState.loaded(value.favorites
                    .copyWith(
                        venueIds: [...value.favorites.venueIds, e.venueId])))),
          );
        },
        removeVenueFromFavorites: (e) async {
          AnalyticsService().logEvent(
              name: "remove venue event",
              parameters: {"eventId": e.venueId, "user id": e.uid});

          final result = await favoritesRepository.removeVenueFromFavorites(
              uid: e.uid, venueId: e.venueId);
          result.fold(
            (failure) => failure.map(
                serverError: (_) =>
                    emit(const FavoritesState.error('Server Error'))),
            (_) => state.mapOrNull(
                loaded: (value) => emit(FavoritesState.loaded(value.favorites
                    .copyWith(
                        venueIds: value.favorites.venueIds
                            .where((id) => id != e.venueId)
                            .toList())))),
          );
        },
      );
    });
  }
}
