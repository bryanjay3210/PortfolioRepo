import 'package:flutter/widgets.dart';

class DeviceUtils {
  static String getDeviceType(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return 'Mobile';
    } else if (screenWidth >= 600 && screenWidth <= 1024) {
      return 'Tablet';
    } else {
      return 'Desktop';
    }
  }
}
