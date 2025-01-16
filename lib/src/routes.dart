import 'package:along/src/style/style.dart';
import 'package:along/src/views/forget_password_page.dart';
import 'package:along/src/views/initial_page.dart';
import 'package:along/src/views/login_page.dart';
import 'package:along/src/views/profile_pages/profile_details_page.dart';
import 'package:along/src/views/profile_pages/profile_tab.dart';
import 'package:along/src/views/registration_page.dart';
import 'package:along/src/views/settings_pages/address_settings_page.dart';
import 'package:along/src/views/settings_pages/settings_tab.dart';
import 'package:along/src/views/ticket_pages/ticket_departure.dart';
import 'package:along/src/views/ticket_pages/ticket_tab.dart';
import 'package:along/src/views/trips_pages/trips_transaction_page.dart';
import 'package:along/src/views/trips_pages/trips_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

final route = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: InitialPage.routhName,
      name: InitialPage.routhName,
      builder: (context, state) => const InitialPage(),
    ),
    GoRoute(
      path: RegistrationPage.routhName,
      name: RegistrationPage.routhName,
      builder: (context, state) => const RegistrationPage(),
    ),
    GoRoute(
      path: LoginPage.routhName,
      name: LoginPage.routhName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: ForgetPasswordPage.routhName,
      name: ForgetPasswordPage.routhName,
      builder: (context, state) => const ForgetPasswordPage(),
    ),

    // GoRoute(
    //   path: HomePage.routhName,
    //   builder: (context, state) => const HomePage(),
    // ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return ScaffoldWithNavBar(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _sectionANavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: TripsTab.routhName,
              name: TripsTab.routhName,
              builder: (context, state) => const TripsTab(),
              routes: <RouteBase>[
                GoRoute(
                  path: TripsTransactionPage.routhName,
                  name: TripsTransactionPage.routhName,
                  builder: (context, state) => const TripsTransactionPage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: TicketTab.routhName,
              name: TicketTab.routhName,
              builder: (context, state) => const TicketTab(),
              routes: <RouteBase>[
                GoRoute(
                  path: TicketDeparture.routhName,
                  name: TicketDeparture.routhName,
                  builder: (context, state) => const TicketDeparture(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: ProfileTab.routhName,
              name: ProfileTab.routhName,
              builder: (context, state) => const ProfileTab(),
              routes: <RouteBase>[
                GoRoute(
                  path: ProfileDetailsPage.routhName,
                  name: ProfileDetailsPage.routhName,
                  builder: (context, state) => const ProfileDetailsPage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: SettingsTab.routhName,
              name: SettingsTab.routhName,
              builder: (context, state) => const SettingsTab(),
              routes: <RouteBase>[
                GoRoute(
                  path: AddressSettingsPage.routhName,
                  name: AddressSettingsPage.routhName,
                  builder: (context, state) => const AddressSettingsPage(),
                ),
              ],
            ),
          ],
        ),
      ],
    )
  ],
);

class ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  // #docregion configuration-custom-shell
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The StatefulNavigationShell from the associated StatefulShellRoute is
      // directly passed as the body of the Scaffold.
      /// index of the current branch is used to determine which item to highlight in
      /// the BottomNavigationBar. Tapping an item in the BottomNavigationBar will
      /// navigate to the current location of the branch at the provided index using
      /// [StatefulNavigationShell.goBranch].
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        // Here, the items of BottomNavigationBar are hard coded. In a real
        // world scenario, the items would most likely be generated from the
        // branches of the shell route, which can be fetched using
        // `navigationShell.route.branches`.
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.black,
        unselectedItemColor: Styles.c404040,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num_outlined),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        currentIndex: navigationShell.currentIndex,
        // Navigate to the current location of the branch at the provided index
        // when tapping an item in the BottomNavigationBar.
        onTap: (int index) => navigationShell.goBranch(index),
      ),
    );
  }
  // #enddocregion configuration-custom-shell

  /// NOTE: For a slightly more sophisticated branch switching, change the onTap
  /// handler on the BottomNavigationBar above to the following:
  /// `onTap: (int index) => _onTap(context, index),`
  // ignore: unused_element
  void _onTap(BuildContext context, int index) {
    // When navigating to a new branch, it's recommended to use the goBranch
    // method, as doing so makes sure the last navigation state of the
    // Navigator for the branch is restored.
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
