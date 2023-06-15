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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../../features/auth/presentation/views/main_auth/account_selection_page.dart'
    as _i6;
import '../../features/auth/presentation/views/main_auth/email_login.dart'
    as _i9;
import '../../features/auth/presentation/views/main_auth/login_view.dart'
    as _i8;
import '../../features/auth/presentation/views/main_auth/logistic_registration.dart'
    as _i7;
import '../../features/auth/presentation/views/main_auth/new_password.dart'
    as _i12;
import '../../features/auth/presentation/views/main_auth/otp_view.dart' as _i4;
import '../../features/auth/presentation/views/main_auth/personal_info.dart'
    as _i5;
import '../../features/auth/presentation/views/main_auth/reset_password.dart'
    as _i10;
import '../../features/auth/presentation/views/main_auth/setting_up.dart'
    as _i13;
import '../../features/auth/presentation/views/main_auth/signup.dart' as _i3;
import '../../features/auth/presentation/views/main_auth/vendor_registration.dart'
    as _i11;
import '../../features/auth/presentation/views/onboarding/onboarding.dart'
    as _i2;
import '../../features/auth/presentation/views/onboarding/splash_screen.dart'
    as _i1;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
    SignupView.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignupView(),
      );
    },
    OTPView.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OTPView(),
      );
    },
    ProfileInfo.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileInfo(),
      );
    },
    AccountSelection.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AccountSelection(),
      );
    },
    CompanyRegistration.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CompanyRegistration(),
      );
    },
    LoginView.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.LoginView(),
      );
    },
    EmailLoginView.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.EmailLoginView(),
      );
    },
    ResetPasswordView.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ResetPasswordView(),
      );
    },
    VendorRegistration.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.VendorRegistration(),
      );
    },
    NewPasswordView.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.NewPasswordView(),
      );
    },
    SettingUp.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SettingUp(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i14.RouteConfig(
          OnboardingScreen.name,
          path: '/onboarding-screen',
        ),
        _i14.RouteConfig(
          SignupView.name,
          path: '/signup-view',
        ),
        _i14.RouteConfig(
          OTPView.name,
          path: '/o-tp-view',
        ),
        _i14.RouteConfig(
          ProfileInfo.name,
          path: '/profile-info',
        ),
        _i14.RouteConfig(
          AccountSelection.name,
          path: '/account-selection',
        ),
        _i14.RouteConfig(
          CompanyRegistration.name,
          path: '/company-registration',
        ),
        _i14.RouteConfig(
          LoginView.name,
          path: '/login-view',
        ),
        _i14.RouteConfig(
          EmailLoginView.name,
          path: '/email-login-view',
        ),
        _i14.RouteConfig(
          ResetPasswordView.name,
          path: '/reset-password-view',
        ),
        _i14.RouteConfig(
          VendorRegistration.name,
          path: '/vendor-registration',
        ),
        _i14.RouteConfig(
          NewPasswordView.name,
          path: '/new-password-view',
        ),
        _i14.RouteConfig(
          SettingUp.name,
          path: '/setting-up',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i14.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreen extends _i14.PageRouteInfo<void> {
  const OnboardingScreen()
      : super(
          OnboardingScreen.name,
          path: '/onboarding-screen',
        );

  static const String name = 'OnboardingScreen';
}

/// generated route for
/// [_i3.SignupView]
class SignupView extends _i14.PageRouteInfo<void> {
  const SignupView()
      : super(
          SignupView.name,
          path: '/signup-view',
        );

  static const String name = 'SignupView';
}

/// generated route for
/// [_i4.OTPView]
class OTPView extends _i14.PageRouteInfo<void> {
  const OTPView()
      : super(
          OTPView.name,
          path: '/o-tp-view',
        );

  static const String name = 'OTPView';
}

/// generated route for
/// [_i5.ProfileInfo]
class ProfileInfo extends _i14.PageRouteInfo<void> {
  const ProfileInfo()
      : super(
          ProfileInfo.name,
          path: '/profile-info',
        );

  static const String name = 'ProfileInfo';
}

/// generated route for
/// [_i6.AccountSelection]
class AccountSelection extends _i14.PageRouteInfo<void> {
  const AccountSelection()
      : super(
          AccountSelection.name,
          path: '/account-selection',
        );

  static const String name = 'AccountSelection';
}

/// generated route for
/// [_i7.CompanyRegistration]
class CompanyRegistration extends _i14.PageRouteInfo<void> {
  const CompanyRegistration()
      : super(
          CompanyRegistration.name,
          path: '/company-registration',
        );

  static const String name = 'CompanyRegistration';
}

/// generated route for
/// [_i8.LoginView]
class LoginView extends _i14.PageRouteInfo<void> {
  const LoginView()
      : super(
          LoginView.name,
          path: '/login-view',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i9.EmailLoginView]
class EmailLoginView extends _i14.PageRouteInfo<void> {
  const EmailLoginView()
      : super(
          EmailLoginView.name,
          path: '/email-login-view',
        );

  static const String name = 'EmailLoginView';
}

/// generated route for
/// [_i10.ResetPasswordView]
class ResetPasswordView extends _i14.PageRouteInfo<void> {
  const ResetPasswordView()
      : super(
          ResetPasswordView.name,
          path: '/reset-password-view',
        );

  static const String name = 'ResetPasswordView';
}

/// generated route for
/// [_i11.VendorRegistration]
class VendorRegistration extends _i14.PageRouteInfo<void> {
  const VendorRegistration()
      : super(
          VendorRegistration.name,
          path: '/vendor-registration',
        );

  static const String name = 'VendorRegistration';
}

/// generated route for
/// [_i12.NewPasswordView]
class NewPasswordView extends _i14.PageRouteInfo<void> {
  const NewPasswordView()
      : super(
          NewPasswordView.name,
          path: '/new-password-view',
        );

  static const String name = 'NewPasswordView';
}

/// generated route for
/// [_i13.SettingUp]
class SettingUp extends _i14.PageRouteInfo<void> {
  const SettingUp()
      : super(
          SettingUp.name,
          path: '/setting-up',
        );

  static const String name = 'SettingUp';
}
