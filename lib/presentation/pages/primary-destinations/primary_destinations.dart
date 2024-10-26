import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../application/favorites/favorites_bloc.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../application/events/events_bloc.dart';
import '../../../application/profile/profile_bloc.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_router.dart';
import '../favorites/favorites_page.dart';
import '../guest-list/guest_list_page.dart';
import '../tickets/tickets_page.dart';
import '../home/home_page.dart';
import '../search/search_page.dart';

class PrimaryDestinationsPage extends StatefulWidget {
  const PrimaryDestinationsPage({super.key});

  @override
  State<PrimaryDestinationsPage> createState() =>
      _PrimaryDestinationsPageState();
}

class _PrimaryDestinationsPageState extends State<PrimaryDestinationsPage> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> pages = [
    {
      'page': const HomePage(),
      'imagePath': ImageConstant.imgNavHomePrimary,
      'label': "Home",
    },
    {
      'page': const FavoritesPage(),
      'imagePath': ImageConstant.imgNavFavourites,
      'label': "Favorites",
    },
    {
      'page': const SearchPage(),
      'imagePath': ImageConstant.imgRewind,
      'label': "Search",
    },
    {
      'page': const GuestListPage(),
      'imagePath': ImageConstant.imgNavGuestListGray40001,
      'label': "Guest List",
    },
    {
      'page': const TicketsPage(),
      'imagePath': ImageConstant.imgNavTicketsGray40001,
      'label': "Tickets",
    },
  ];

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().state.map(
        initial: (e) => context.go(AppRouter.splashRoute),
        authenticated: (e) {
          context.read<ProfileBloc>().add(ProfileEvent.getProfile(e.uid));
          context.read<FavoritesBloc>().add(FavoritesEvent.getFavorites(e.uid));
          context
              .read<EventsBloc>()
              .add(const EventsEvent.getCategorizedEvents(limit: 50, skip: 0));
        },
        unauthenticated: (e) => context.go(AppRouter.loginRoute));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex]['page'],
      bottomNavigationBar: _buildNavigationBar(context),
    );
  }

  _buildNavigationBar(BuildContext context) {
    return Container(
      color: appTheme.gray90002,
      height: 8.h,
      child: Row(
        children: List.generate(
          pages.length,
          (i) => _buildBottomNavigationBarItem(
              context: context,
              imagePath: pages[i]['imagePath'],
              index: i,
              label: pages[i]['label']),
        ),
      ),
    );
  }

  _buildBottomNavigationBarItem({
    required BuildContext context,
    required String imagePath,
    required int index,
    required String label,
  }) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              setState(() {
                _currentIndex = index;
              });
            },
            icon: Column(children: [
              CustomImageView(
                imagePath: imagePath,
                height: 3.2.h,
                width: 3.2.h,
                color: index == _currentIndex
                    ? appTheme.cyan500
                    : appTheme.white900,
              ),
              Text(
                label,
                style: TextStyle(
                  color: appTheme.white900,
                  fontWeight: index == _currentIndex
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ]),
            color:
                _currentIndex == index ? appTheme.cyan500 : appTheme.white900,
          ),
        ],
      ),
    );
  }
}
