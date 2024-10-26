import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../../application/auth_form/auth_form_bloc.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        // TODO: implement listener
        // print('===============>>>state: $state');
        // if (state.authFailureOrSuccessOption.isSome()) {
        //   state.authFailureOrSuccessOption.fold(
        //     () => print('Nothing'),
        //     (either) => either.fold(
        //       (failure) => print('Failure: $failure'),
        //       (success) {
        //         // print('Success: $success');
        //         // Navigator.of(context).pushAndRemoveUntil(
        //         //   MaterialPageRoute(
        //         //       builder: (contex) => const PrimaryDestinationsScreen()),
        //         //   (route) => false,
        //         // );
        //       },
        //     ),
        //   );
        // }
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.h),
                TextFormField(
                  autocorrect: false,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => context
                      .read<AuthFormBloc>()
                      .add(AuthFormEvent.emailChanged(value)),
                  validator: (value) => context
                      .read<AuthFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (l) => l.map(
                          emptyEmail: (val) => 'Enter Your Email',
                          invalidEmail: (val) => 'Enter Valid Email',
                        ),
                        (r) => null,
                      ),
                ),
                SizedBox(height: 1.h),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => context
                      .read<AuthFormBloc>()
                      .add(AuthFormEvent.passwordChanged(value)),
                  validator: (value) =>
                      context.read<AuthFormBloc>().state.password.value.fold(
                            (l) => l.map(
                              emptyPassword: (val) => 'Enter your password',
                              shortPassword: (val) => 'Too short password',
                            ),
                            (r) => null,
                          ),
                ),
                SizedBox(height: 2.h),
                ElevatedButton(
                  onPressed: () => context.read<AuthFormBloc>().add(
                      const AuthFormEvent.signInWithEmailAndPasswordPressed()),
                  child: const Text('LOG IN'),
                ),
                SizedBox(height: 4.h),
                ElevatedButton(
                  onPressed: () => context
                      .read<AuthFormBloc>()
                      .add(const AuthFormEvent.signInWithGooglePressed()),
                  child: const Text('SIGN IN WITH GOOGLE'),
                ),
                SizedBox(height: 1.h),
                ElevatedButton(
                  onPressed: () => context
                      .read<AuthFormBloc>()
                      .add(const AuthFormEvent.signInWithFacebookPressed()),
                  child: const Text('SIGN IN WITH FACEBOOK'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
