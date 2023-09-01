import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/bootstrap.dart';
import 'package:portfolio/routes/app_routes.dart';

void main() {
  Bootstrap().getItRegister();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Porfolio',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
          useMaterial3: true,
          textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      routeInformationParser:
          GetIt.I<AppRoutes>().routes.routeInformationParser,
      routerDelegate: GetIt.I<AppRoutes>().routes.routerDelegate,
    );
  }
}
