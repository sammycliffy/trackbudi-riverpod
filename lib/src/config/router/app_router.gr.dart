// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../features/auth/presentation/views/main_auth/account_selection_page.dart'
    as _i6;
import '../../features/auth/presentation/views/main_auth/company_registration.dart'
    as _i7;
import '../../features/auth/presentation/views/main_auth/email_login.dart'
    as _i9;
import '../../features/auth/presentation/views/main_auth/login_view.dart'
    as _i8;
import '../../features/auth/presentation/views/main_auth/new_password.dart'
    as _i11;
import '../../features/auth/presentation/views/main_auth/otp_view.dart' as _i4;
import '../../features/auth/presentation/views/main_auth/personal_info.dart'
    as _i5;
import '../../features/auth/presentation/views/main_auth/reset_password.dart'
    as _i10;
import '../../features/auth/presentation/views/main_auth/signup.dart' as _i3;
import '../../features/auth/presentation/views/onboarding/onboarding.dart'
    as _i2;
import '../../features/auth/presentation/views/onboarding/splash_screen.dart'
    as _i1;

/// generated route for
/// [_i6.AccountSelection]
class AccountSelection extends _i12.PageRouteInfo<void> {
  static const String name = 'AccountSelection';

  const AccountSelection()
      : super(
          AccountSelection.name,
          path: '/account-selection',
        );
}

class AppRouter extends _i12.RootStackRouter {
  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
    SignupView.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignupView(),
      );
    },
    OTPView.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OTPView(),
      );
    },
    ProfileInfo.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ProfileInfo(),
      );
    },
    AccountSelection.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.AccountSelection(),
      );
    },
    CompanyRegistration.name: (routeData) {
      final args = routeData.argsAs<CompanyRegistrationArgs>(
          orElse: () => const CompanyRegistrationArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.CompanyRegistration(key: args.key),
      );
    },
    LoginView.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.LoginView(),
      );
    },
    EmailLoginView.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.EmailLoginView(),
      );
    },
    ResetPasswordView.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ResetPasswordView(),
      );
    },
    NewPasswordView.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.NewPasswordView(),
      );
    },
  };

  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i12.RouteConfig(
          OnboardingScreen.name,
          path: '/onboarding-screen',
        ),
        _i12.RouteConfig(
          SignupView.name,
          path: '/signup-view',
        ),
        _i12.RouteConfig(
          OTPView.name,
          path: '/o-tp-view',
        ),
        _i12.RouteConfig(
          ProfileInfo.name,
          path: '/profile-info',
        ),
        _i12.RouteConfig(
          AccountSelection.name,
          path: '/account-selection',
        ),
        _i12.RouteConfig(
          CompanyRegistration.name,
          path: '/company-registration',
        ),
        _i12.RouteConfig(
          LoginView.name,
          path: '/login-view',
        ),
        _i12.RouteConfig(
          EmailLoginView.name,
          path: '/email-login-view',
        ),
        _i12.RouteConfig(
          ResetPasswordView.name,
          path: '/reset-password-view',
        ),
        _i12.RouteConfig(
          NewPasswordView.name,
          path: '/new-password-view',
        ),
      ];
}

/// generated route for
/// [_i7.CompanyRegistration]
class CompanyRegistration extends _i12.PageRouteInfo<CompanyRegistrationArgs> {
  static const String name = 'CompanyRegistration';

  CompanyRegistration({_i13.Key? key})
      : super(
          CompanyRegistration.name,
          path: '/company-registration',
          args: CompanyRegistrationArgs(key: key),
        );
}

class CompanyRegistrationArgs {
  final _i13.Key? key;

  const CompanyRegistrationArgs({this.key});

  @override
  String toString() {
    return 'CompanyRegistrationArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.EmailLoginView]
class EmailLoginView extends _i12.PageRouteInfo<void> {
  static const String name = 'EmailLoginView';

  const EmailLoginView()
      : super(
          EmailLoginView.name,
          path: '/email-login-view',
        );
}

/// generated route for
/// [_i8.LoginView]
class LoginView extends _i12.PageRouteInfo<void> {
  static const String name = 'LoginView';

  const LoginView()
      : super(
          LoginView.name,
          path: '/login-view',
        );
}

/// generated route for
/// [_i11.NewPasswordView]
class NewPasswordView extends _i12.PageRouteInfo<void> {
  static const String name = 'NewPasswordView';

  const NewPasswordView()
      : super(
          NewPasswordView.name,
          path: '/new-password-view',
        );
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreen extends _i12.PageRouteInfo<void> {
  static const String name = 'OnboardingScreen';

  const OnboardingScreen()
      : super(
          OnboardingScreen.name,
          path: '/onboarding-screen',
        );
}

/// generated route for
/// [_i4.OTPView]
class OTPView extends _i12.PageRouteInfo<void> {
  static const String name = 'OTPView';

  const OTPView()
      : super(
          OTPView.name,
          path: '/o-tp-view',
        );
}

/// generated route for
/// [_i5.ProfileInfo]
class ProfileInfo extends _i12.PageRouteInfo<void> {
  static const String name = 'ProfileInfo';

  const ProfileInfo()
      : super(
          ProfileInfo.name,
          path: '/profile-info',
        );
}

/// generated route for
/// [_i10.ResetPasswordView]
class ResetPasswordView extends _i12.PageRouteInfo<void> {
  static const String name = 'ResetPasswordView';

  const ResetPasswordView()
      : super(
          ResetPasswordView.name,
          path: '/reset-password-view',
        );
}

/// generated route for
/// [_i3.SignupView]
class SignupView extends _i12.PageRouteInfo<void> {
  static const String name = 'SignupView';

  const SignupView()
      : super(
          SignupView.name,
          path: '/signup-view',
        );
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i12.PageRouteInfo<void> {
  static const String name = 'SplashScreen';

  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );
}
