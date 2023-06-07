import 'package:auto_route/auto_route.dart';

import '../../presentation/views/onboarding/splash_screen.dart';

@AdaptiveAutoRouter(
    routes: <AutoRoute>[AutoRoute(page: SplashScreen, initial: true)])
class $AppRouter {}
