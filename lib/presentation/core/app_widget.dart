import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/application/payment/payment_bloc.dart';
import 'package:ticket_tree_client/application/ticket_rates/ticket_rates_bloc.dart';
import 'package:ticket_tree_client/application/tickets/tickets_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth_form/auth_form_bloc.dart';
import '../../application/events/events_bloc.dart';
import '../../application/favorites/favorites_bloc.dart';
import '../../application/profile/profile_bloc.dart';
import '../../application/search/search_bloc.dart';
import '../../application/venues/venues_bloc.dart';
import '../../injection.dart';
import '../routes/app_router.dart';
import 'theme/theme_helper.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return Sizer(
      builder: (context, orientation, deviceType) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<AuthBloc>()),
          BlocProvider(create: (context) => getIt<AuthFormBloc>()),
          BlocProvider(create: (context) => getIt<EventsBloc>()),
          BlocProvider(create: (context) => getIt<ProfileBloc>()),
          BlocProvider(create: (context) => getIt<FavoritesBloc>()),
          BlocProvider(create: (context) => getIt<SearchBloc>()),
          BlocProvider(create: (context) => getIt<VenuesBloc>()),
          BlocProvider(create: (context) => getIt<TicketRatesBloc>()),
          BlocProvider(create: (context) => getIt<PaymentBloc>()),
          BlocProvider(create: (context) => getIt<TicketsBloc>()),
        ],
        child: MaterialApp.router(
          title: 'TickeTree',
          debugShowCheckedModeBanner: false,
          theme: theme,
          routerConfig: appRouter.router,
        ),
      ),
    );
  }
}
