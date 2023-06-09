// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'src/config/di/injector.dart';
import 'src/config/router/app_router.gr.dart';
import 'src/config/themes/app_theme.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/services.dart' as device;


Future<void> main() async {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  await trackbudiDependencies(Environment.dev);
  await dotenv.load(fileName: '.env');
  await device.SystemChrome.setPreferredOrientations(
      [device.DeviceOrientation.portraitUp]);
  await device.SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [device.SystemUiOverlay.bottom]);
  device.SystemChrome.setSystemUIOverlayStyle(const device.SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light));

  runApp(TrackBudiMobile());
}

class TrackBudiMobile extends StatelessWidget {
  final appRouter = AppRouter();
  TrackBudiMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
