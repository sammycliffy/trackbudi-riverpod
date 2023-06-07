import 'package:flutter/material.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/config/themes/app_theme.dart';

void main() {
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
