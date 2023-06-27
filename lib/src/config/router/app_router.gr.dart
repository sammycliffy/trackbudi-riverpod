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
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../features/auth/presentation/views/main_auth/account_selection_page.dart'
    as _i6;
import '../../features/auth/presentation/views/main_auth/community_guideline.dart'
    as _i15;
import '../../features/auth/presentation/views/main_auth/community_guideline_pre.dart'
    as _i14;
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

/// generated route for
/// [_i6.AccountSelection]
class AccountSelection extends _i16.PageRouteInfo<void> {
  static const String name = 'AccountSelection';

  const AccountSelection()
      : super(
          AccountSelection.name,
          path: '/account-selection',
        );
}

class AppRouter extends _i16.RootStackRouter {
  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
    SignupView.name: (routeData) {
      final args = routeData.argsAs<SignupViewArgs>(
          orElse: () => const SignupViewArgs());
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignupView(key: args.key),
      );
    },
    OTPView.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.OTPView(),
      );
    },
    ProfileInfo.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileInfo(),
      );
    },
    AccountSelection.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AccountSelection(),
      );
    },
    CompanyRegistration.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CompanyRegistration(),
      );
    },
    LoginView.name: (routeData) {
      final args =
          routeData.argsAs<LoginViewArgs>(orElse: () => const LoginViewArgs());
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.LoginView(key: args.key),
      );
    },
    EmailLoginView.name: (routeData) {
      final args = routeData.argsAs<EmailLoginViewArgs>(
          orElse: () => const EmailLoginViewArgs());
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.EmailLoginView(key: args.key),
      );
    },
    ResetPasswordView.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordViewArgs>(
          orElse: () => const ResetPasswordViewArgs());
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ResetPasswordView(key: args.key),
      );
    },
    VendorRegistration.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.VendorRegistration(),
      );
    },
    NewPasswordView.name: (routeData) {
      final args = routeData.argsAs<NewPasswordViewArgs>(
          orElse: () => const NewPasswordViewArgs());
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.NewPasswordView(key: args.key),
      );
    },
    SettingUp.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SettingUp(),
      );
    },
    CommunityGuildelinePreview.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.CommunityGuildelinePreview(),
      );
    },
    CommunityGuideline.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.CommunityGuideline(),
      );
    },
  };

  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i16.RouteConfig(
          OnboardingScreen.name,
          path: '/onboarding-screen',
        ),
        _i16.RouteConfig(
          SignupView.name,
          path: '/signup-view',
        ),
        _i16.RouteConfig(
          OTPView.name,
          path: '/o-tp-view',
        ),
        _i16.RouteConfig(
          ProfileInfo.name,
          path: '/profile-info',
        ),
        _i16.RouteConfig(
          AccountSelection.name,
          path: '/account-selection',
        ),
        _i16.RouteConfig(
          CompanyRegistration.name,
          path: '/company-registration',
        ),
        _i16.RouteConfig(
          LoginView.name,
          path: '/login-view',
        ),
        _i16.RouteConfig(
          EmailLoginView.name,
          path: '/email-login-view',
        ),
        _i16.RouteConfig(
          ResetPasswordView.name,
          path: '/reset-password-view',
        ),
        _i16.RouteConfig(
          VendorRegistration.name,
          path: '/vendor-registration',
        ),
        _i16.RouteConfig(
          NewPasswordView.name,
          path: '/new-password-view',
        ),
        _i16.RouteConfig(
          SettingUp.name,
          path: '/setting-up',
        ),
        _i16.RouteConfig(
          CommunityGuildelinePreview.name,
          path: '/community-guildeline-preview',
        ),
        _i16.RouteConfig(
          CommunityGuideline.name,
          path: '/community-guideline',
        ),
      ];
}

/// generated route for
/// [_i15.CommunityGuideline]
class CommunityGuideline extends _i16.PageRouteInfo<void> {
  static const String name = 'CommunityGuideline';

  const CommunityGuideline()
      : super(
          CommunityGuideline.name,
          path: '/community-guideline',
        );
}

/// generated route for
/// [_i14.CommunityGuildelinePreview]
class CommunityGuildelinePreview extends _i16.PageRouteInfo<void> {
  static const String name = 'CommunityGuildelinePreview';

  const CommunityGuildelinePreview()
      : super(
          CommunityGuildelinePreview.name,
          path: '/community-guildeline-preview',
        );
}

/// generated route for
/// [_i7.CompanyRegistration]
class CompanyRegistration extends _i16.PageRouteInfo<void> {
  static const String name = 'CompanyRegistration';

  const CompanyRegistration()
      : super(
          CompanyRegistration.name,
          path: '/company-registration',
        );
}

/// generated route for
/// [_i9.EmailLoginView]
class EmailLoginView extends _i16.PageRouteInfo<EmailLoginViewArgs> {
  static const String name = 'EmailLoginView';

  EmailLoginView({_i17.Key? key})
      : super(
          EmailLoginView.name,
          path: '/email-login-view',
          args: EmailLoginViewArgs(key: key),
        );
}

class EmailLoginViewArgs {
  final _i17.Key? key;

  const EmailLoginViewArgs({this.key});

  @override
  String toString() {
    return 'EmailLoginViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.LoginView]
class LoginView extends _i16.PageRouteInfo<LoginViewArgs> {
  static const String name = 'LoginView';

  LoginView({_i17.Key? key})
      : super(
          LoginView.name,
          path: '/login-view',
          args: LoginViewArgs(key: key),
        );
}

class LoginViewArgs {
  final _i17.Key? key;

  const LoginViewArgs({this.key});

  @override
  String toString() {
    return 'LoginViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.NewPasswordView]
class NewPasswordView extends _i16.PageRouteInfo<NewPasswordViewArgs> {
  static const String name = 'NewPasswordView';

  NewPasswordView({_i17.Key? key})
      : super(
          NewPasswordView.name,
          path: '/new-password-view',
          args: NewPasswordViewArgs(key: key),
        );
}

class NewPasswordViewArgs {
  final _i17.Key? key;

  const NewPasswordViewArgs({this.key});

  @override
  String toString() {
    return 'NewPasswordViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreen extends _i16.PageRouteInfo<void> {
  static const String name = 'OnboardingScreen';

  const OnboardingScreen()
      : super(
          OnboardingScreen.name,
          path: '/onboarding-screen',
        );
}

/// generated route for
/// [_i4.OTPView]
class OTPView extends _i16.PageRouteInfo<void> {
  static const String name = 'OTPView';

  const OTPView()
      : super(
          OTPView.name,
          path: '/o-tp-view',
        );
}

/// generated route for
/// [_i5.ProfileInfo]
class ProfileInfo extends _i16.PageRouteInfo<void> {
  static const String name = 'ProfileInfo';

  const ProfileInfo()
      : super(
          ProfileInfo.name,
          path: '/profile-info',
        );
}

/// generated route for
/// [_i10.ResetPasswordView]
class ResetPasswordView extends _i16.PageRouteInfo<ResetPasswordViewArgs> {
  static const String name = 'ResetPasswordView';

  ResetPasswordView({_i17.Key? key})
      : super(
          ResetPasswordView.name,
          path: '/reset-password-view',
          args: ResetPasswordViewArgs(key: key),
        );
}

class ResetPasswordViewArgs {
  final _i17.Key? key;

  const ResetPasswordViewArgs({this.key});

  @override
  String toString() {
    return 'ResetPasswordViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.SettingUp]
class SettingUp extends _i16.PageRouteInfo<void> {
  static const String name = 'SettingUp';

  const SettingUp()
      : super(
          SettingUp.name,
          path: '/setting-up',
        );
}

/// generated route for
/// [_i3.SignupView]
class SignupView extends _i16.PageRouteInfo<SignupViewArgs> {
  static const String name = 'SignupView';

  SignupView({_i17.Key? key})
      : super(
          SignupView.name,
          path: '/signup-view',
          args: SignupViewArgs(key: key),
        );
}

class SignupViewArgs {
  final _i17.Key? key;

  const SignupViewArgs({this.key});

  @override
  String toString() {
    return 'SignupViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i16.PageRouteInfo<void> {
  static const String name = 'SplashScreen';

  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );
}

/// generated route for
/// [_i11.VendorRegistration]
class VendorRegistration extends _i16.PageRouteInfo<void> {
  static const String name = 'VendorRegistration';

  const VendorRegistration()
      : super(
          VendorRegistration.name,
          path: '/vendor-registration',
        );
}
