import 'package:auto_route/auto_route.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/views/main_auth/community_guideline.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/views/main_auth/community_guideline_pre.dart';

import '../../features/auth/presentation/views/main_auth/account_selection_page.dart';
import '../../features/auth/presentation/views/main_auth/email_login.dart';
import '../../features/auth/presentation/views/main_auth/login_view.dart';
import '../../features/auth/presentation/views/main_auth/logistic_registration.dart';
import '../../features/auth/presentation/views/main_auth/new_password.dart';
import '../../features/auth/presentation/views/main_auth/otp_view.dart';
import '../../features/auth/presentation/views/main_auth/personal_info.dart';
import '../../features/auth/presentation/views/main_auth/reset_password.dart';
import '../../features/auth/presentation/views/main_auth/setting_up.dart';
import '../../features/auth/presentation/views/main_auth/signup.dart';
import '../../features/auth/presentation/views/main_auth/vendor_registration.dart';
import '../../features/auth/presentation/views/onboarding/onboarding.dart';
import '../../features/auth/presentation/views/onboarding/splash_screen.dart';

// final appRouter = AppRouter();

// @AdaptiveAutoRouter(routes: <AutoRoute>[
//   AutoRoute(page: SplashScreen, initial: true),
//   AutoRoute(
//     page: OnboardingScreen,
//   )
// ])
// class $AppRouter {}

@MaterialAutoRouter(replaceInRouteName: 'page,Route', routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(
    page: OnboardingScreen,
  ),
  AutoRoute(page: SignupView),
  AutoRoute(page: OTPView),
  AutoRoute(page: ProfileInfo),
  AutoRoute(page: AccountSelection),
  AutoRoute(page: CompanyRegistration),
  AutoRoute(page: LoginView),
  AutoRoute(page: EmailLoginView),
  AutoRoute(page: ResetPasswordView),
  AutoRoute(page: VendorRegistration),
  AutoRoute(page: NewPasswordView),
  AutoRoute(page: SettingUp),
  AutoRoute(page: CommunityGuildelinePreview),
  AutoRoute(page: CommunityGuideline)
])
class $AppRouter {}
