import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/contact/contact.dart';
import 'package:portfolio/pages/education/education.dart';
import 'package:portfolio/pages/experience/experience.dart';
import 'package:portfolio/pages/projects/details/details.dart';
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
        path: '/${RouteConstants.skills}',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: SkillsScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.experience,
        path: '/${RouteConstants.experience}',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: ExperienceScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.education,
        path: '/${RouteConstants.education}',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: EducationScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.projects,
        path: '/${RouteConstants.projects}',
        pageBuilder: (context, state) {
          return const CupertinoPage(child: ProjectScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.projectsDetails,
        path: '/${RouteConstants.projectsDetails}/:detailsName',
        pageBuilder: (context, state) {
          return CupertinoPage(
              child: ProjectDetailsScreen(
            detailsName: state.pathParameters['detailsName'],
          ));
        },
      ),
      GoRoute(
        name: RouteConstants.contacts,
        path: '/${RouteConstants.contacts}',
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
