import 'package:get_it/get_it.dart';
import 'package:portfolio/routes/app_routes.dart';

class Bootstrap {
  Future getItRegister() async {
    GetIt.I.registerSingleton<AppRoutes>(AppRoutes());
  }
}
