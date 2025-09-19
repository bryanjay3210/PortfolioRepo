import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/contact/contact.dart';
import 'package:portfolio/pages/education/education.dart';
import 'package:portfolio/pages/experience/experience.dart';
import 'package:portfolio/pages/projects/projects.dart';
import 'package:portfolio/pages/skills/skills.dart';
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
      GoRoute(
        name: RouteConstants.skills,
        path: '/skills',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: SkillsScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.experience,
        path: '/work-experience',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: ExperienceScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.education,
        path: '/education',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: EducationScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.projects,
        path: '/projects',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: ProjectScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.contacts,
        path: '/contacts',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: ContactScreen());
        },
      ),
    ],
    redirect: (context, state) async {
      return null;

      // return null;
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
