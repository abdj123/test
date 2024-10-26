// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i806;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:location/location.dart' as _i645;
import 'package:ticket_tree_client/application/auth/auth_bloc.dart' as _i931;
import 'package:ticket_tree_client/application/auth_form/auth_form_bloc.dart'
    as _i50;
import 'package:ticket_tree_client/application/events/events_bloc.dart'
    as _i810;
import 'package:ticket_tree_client/application/favorites/favorites_bloc.dart'
    as _i771;
import 'package:ticket_tree_client/application/payment/payment_bloc.dart'
    as _i513;
import 'package:ticket_tree_client/application/profile/profile_bloc.dart'
    as _i865;
import 'package:ticket_tree_client/application/search/search_bloc.dart'
    as _i1066;
import 'package:ticket_tree_client/application/ticket_rates/ticket_rates_bloc.dart'
    as _i648;
import 'package:ticket_tree_client/application/tickets/tickets_bloc.dart'
    as _i844;
import 'package:ticket_tree_client/application/venues/venues_bloc.dart' as _i68;
import 'package:ticket_tree_client/domain/auth/i_auth_facade.dart' as _i404;
import 'package:ticket_tree_client/domain/events/i_event_facade.dart' as _i833;
import 'package:ticket_tree_client/domain/favorites/i_favorites_repository.dart'
    as _i305;
import 'package:ticket_tree_client/domain/user-profile/i_user_profile_facade.dart'
    as _i287;
import 'package:ticket_tree_client/domain/venues/i_venue_repository.dart'
    as _i929;
import 'package:ticket_tree_client/infrastructure/auth/firebase_auth_facade.dart'
    as _i1020;
import 'package:ticket_tree_client/infrastructure/core/firebase_injectable_module.dart'
    as _i966;
import 'package:ticket_tree_client/infrastructure/events/event_facade.dart'
    as _i731;
import 'package:ticket_tree_client/infrastructure/favorites/favorites_repository.dart'
    as _i949;
import 'package:ticket_tree_client/infrastructure/user-profile/firebase_profile_facade.dart'
    as _i339;
import 'package:ticket_tree_client/infrastructure/venue/venue_repository.dart'
    as _i273;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i116.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i59.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i806.FacebookAuth>(
        () => firebaseInjectableModule.facebookAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i645.Location>(() => firebaseInjectableModule.location);
    gh.lazySingleton<_i404.IAuthFacade>(() => _i1020.FirebaseAuthFacade(
          gh<_i59.FirebaseAuth>(),
          gh<_i116.GoogleSignIn>(),
          gh<_i806.FacebookAuth>(),
          gh<_i974.FirebaseFirestore>(),
        ));
    gh.factory<_i931.AuthBloc>(() => _i931.AuthBloc(gh<_i404.IAuthFacade>()));
    gh.factory<_i50.AuthFormBloc>(
        () => _i50.AuthFormBloc(gh<_i404.IAuthFacade>()));
    gh.lazySingleton<_i287.IUserProfileFacade>(
        () => _i339.FirebaseProfileFacade(
              gh<_i974.FirebaseFirestore>(),
              gh<_i645.Location>(),
            ));
    gh.lazySingleton<_i929.IVenueFacade>(() => _i273.VenueRepository());
    gh.lazySingleton<_i833.IEventFacade>(
        () => _i731.EventFacade(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i305.IFavoritesRepository>(
        () => _i949.FavoritesRepository(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i68.VenuesBloc>(
        () => _i68.VenuesBloc(gh<_i929.IVenueFacade>()));
    gh.factory<_i844.TicketsBloc>(
        () => _i844.TicketsBloc(gh<_i833.IEventFacade>()));
    gh.factory<_i513.PaymentBloc>(() => _i513.PaymentBloc(
          gh<_i833.IEventFacade>(),
          gh<_i287.IUserProfileFacade>(),
        ));
    gh.factory<_i865.ProfileBloc>(
        () => _i865.ProfileBloc(gh<_i287.IUserProfileFacade>()));
    gh.factory<_i771.FavoritesBloc>(
        () => _i771.FavoritesBloc(gh<_i305.IFavoritesRepository>()));
    gh.factory<_i810.EventsBloc>(
        () => _i810.EventsBloc(gh<_i833.IEventFacade>()));
    gh.factory<_i1066.SearchBloc>(
        () => _i1066.SearchBloc(gh<_i833.IEventFacade>()));
    gh.factory<_i648.TicketRatesBloc>(
        () => _i648.TicketRatesBloc(gh<_i833.IEventFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i966.FirebaseInjectableModule {}
