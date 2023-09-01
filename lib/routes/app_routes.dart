import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/routes/route_constants.dart';

import '../pages/landing/landing.dart';

class AppRoutes {
  GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.landing,
        path: '/',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: LandingScreen());
        },
      ),
    ],
    redirect: (context, state) async {
      return null;
      // bool isAuthenticated = false;
      // if (!isAuthenticated) {
      //   return state.namedLocation(RouteConstants.login);
      // }
    },
    // errorPageBuilder: (context, state) {
    //   // return NoTransitionPage(child: NotFoundPage());
    // },
  );
}
