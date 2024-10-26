import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.checkAuth());
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) =>
              context.read<AuthBloc>().add(const AuthEvent.checkAuth()),
          authenticated: (_) => context.go(AppRouter.primaryDestinationsRoute),
          unauthenticated: (_) => context.go(AppRouter.loginRoute),
        );
      },
      child: Scaffold(
        body: CustomImageView(
          imagePath: ImageConstant.splashImg,
          height: 100.h,
          width: 100.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
