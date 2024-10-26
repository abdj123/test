import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ticket_tree_client/domain/venues/entities/venue.dart';
import 'package:ticket_tree_client/domain/venues/i_venue_repository.dart';

part 'venues_event.dart';
part 'venues_state.dart';
part 'venues_bloc.freezed.dart';

@injectable
class VenuesBloc extends Bloc<VenuesEvent, VenuesState> {
  final IVenueFacade _venueFacade;
  VenuesBloc(this._venueFacade) : super(_Initial()) {
    on<VenuesEvent>((event, emit) async {
      await event.map(
        started: (e) => null,
        getVenues: (e) async {
          emit(const VenuesState.loading());
          final venues =
              await _venueFacade.getVenues(limit: e.limit, skip: e.skip);
          venues.fold(
            (f) => emit(const VenuesState.error('Something went wrong.')),
            (venues) => emit(VenuesState.loaded(venues)),
          );
        },
      );
    });
  }
}
