import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/user-profile/entities/user_profile.dart';
import '../../domain/user-profile/i_user_profile_facade.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserProfileFacade _profileFacade;
  ProfileBloc(this._profileFacade) : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
          started: (e) async => null,
          getProfile: (e) async {
            emit(const ProfileState.loading());
            final res = await _profileFacade.getUserProfile(e.uid);
            res.fold(
                (f) => emit(const ProfileState.error(
                    'Something went wrong on loading user data')),
                (profile) => emit(ProfileState.loaded(profile)));
          });
    });
  }
}
