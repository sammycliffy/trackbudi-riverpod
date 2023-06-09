/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Euclid Circular A Bold Italic.ttf
  String get euclidCircularABoldItalic =>
      'assets/fonts/Euclid Circular A Bold Italic.ttf';

  /// File path: assets/fonts/Euclid Circular A Italic.ttf
  String get euclidCircularAItalic =>
      'assets/fonts/Euclid Circular A Italic.ttf';

  /// File path: assets/fonts/Euclid Circular A Light Italic.ttf
  String get euclidCircularALightItalic =>
      'assets/fonts/Euclid Circular A Light Italic.ttf';

  /// File path: assets/fonts/Euclid Circular A Light.ttf
  String get euclidCircularALight => 'assets/fonts/Euclid Circular A Light.ttf';

  /// File path: assets/fonts/Euclid Circular A Medium Italic.ttf
  String get euclidCircularAMediumItalic =>
      'assets/fonts/Euclid Circular A Medium Italic.ttf';

  /// File path: assets/fonts/Euclid Circular A Medium.ttf
  String get euclidCircularAMedium =>
      'assets/fonts/Euclid Circular A Medium.ttf';

  /// File path: assets/fonts/Euclid Circular A SemiBold Italic.ttf
  String get euclidCircularASemiBoldItalic =>
      'assets/fonts/Euclid Circular A SemiBold Italic.ttf';

  /// File path: assets/fonts/Euclid Circular A SemiBold.ttf
  String get euclidCircularASemiBold =>
      'assets/fonts/Euclid Circular A SemiBold.ttf';

  /// File path: assets/fonts/Euclid_Circular_A_Bold.ttf
  String get euclidCircularABold => 'assets/fonts/Euclid_Circular_A_Bold.ttf';

  /// File path: assets/fonts/Euclid_Circular_A_Regular.ttf
  String get euclidCircularARegular =>
      'assets/fonts/Euclid_Circular_A_Regular.ttf';

  /// List of all assets
  List<String> get values => [
        euclidCircularABoldItalic,
        euclidCircularAItalic,
        euclidCircularALightItalic,
        euclidCircularALight,
        euclidCircularAMediumItalic,
        euclidCircularAMedium,
        euclidCircularASemiBoldItalic,
        euclidCircularASemiBold,
        euclidCircularABold,
        euclidCircularARegular
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
