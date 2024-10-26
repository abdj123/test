import 'package:go_router/go_router.dart';
import 'package:ticket_tree_client/domain/order/entities/order_detail.dart';
import 'package:ticket_tree_client/presentation/pages/event-details/event_ticket_details_page.dart';
import 'package:ticket_tree_client/presentation/pages/payment/web_view_page.dart';
import 'package:ticket_tree_client/presentation/pages/tickets/ticket_detail_page.dart';

import '../../../domain/events/entities/event.dart';
import '../../domain/events/entities/ticket_rate.dart';
import '../../domain/venues/entities/venue.dart';
import '../pages/venue-details/venue_detail_page.dart';
import '../pages/event-details/event_detail_page.dart';
import '../pages/auth/sign-up/signup_page.dart';
import '../pages/primary-destinations/primary_destinations.dart';
import '../pages/auth/create-account/create_account_page.dart';
import '../pages/auth/log_in/login_page.dart';
import '../pages/location/change_location_page.dart';
import '../pages/settings/settings_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/welcome/welcome_page.dart';

class AppRouter {
  // onboarding pages
  static const splashRoute = '/';
  static const welcomeRoute = '/welcome';
  static const startOptionsRoute = '/start-options';
  static const loginRoute = '/login';
  // The optional sign-up pages
  static const registerRoute = '/register-1';
  static const String createAccountRoute = '/register-2';
  static const String genreRoute = '/genre';

  // primary destination pages
  static const String primaryDestinationsRoute = '/primary-destinations';
  static const homeRoute = '/home';
  static const favoritesRoute = '/favorites';
  static const searchRoute = '/search';
  static const guestListRoute = '/guest-list';
  static const ticketsRoute = '/tickets';

  // secondary pages
  static const changeLocationRoute = '/change-location';
  static const eventDetailRoute = '/events/:id';
  static const eventTicketsRoute = '/ticket-rates/:id';
  static const venueDetailRoute = '/venues/:id';
  static const settingsRoute = '/settings';
  static const String paymentWebViewRoute = '/payment-webview';
  static const String ticketDetailsRoute = '/ticket-details';

  static const String successRoute = '/success';
  static const String verificationRoute = '/verification';

  final router = GoRouter(
    initialLocation: splashRoute,
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: welcomeRoute,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: loginRoute,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: registerRoute,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: createAccountRoute,
        builder: (context, state) => const CreateAccountPage(),
      ),
      GoRoute(
        path: changeLocationRoute,
        builder: (context, state) => const ChangeLocationPage(),
      ),
      GoRoute(
        path: primaryDestinationsRoute,
        builder: (context, state) => const PrimaryDestinationsPage(),
      ),
      GoRoute(
        path: eventDetailRoute,
        builder: (context, state) => EventDetailPage(state.extra as Event),
      ),
      GoRoute(
        path: eventTicketsRoute,
        builder: (context, state) =>
            EventTicketDetailsPage(ticketRate: state.extra as TicketRate),
      ),
      GoRoute(
        path: paymentWebViewRoute,
        builder: (context, state) =>
            WebViewPage(paymentUrl: state.extra as String),
      ),
      GoRoute(
        path: venueDetailRoute,
        builder: (context, state) =>
            VenueDetailPage(venueOverview: state.extra as Venue),
      ),
      GoRoute(path: settingsRoute, builder: (context, state) => SettingsPage()),
      GoRoute(
          path: ticketDetailsRoute,
          builder: (context, state) =>
              TicketDetailPage(state.extra as OrderDetail)),
    ],
  );
}
