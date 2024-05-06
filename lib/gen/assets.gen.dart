/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_bg.png
  AssetGenImage get icBg => const AssetGenImage('assets/images/ic_bg.png');

  /// File path: assets/images/ic_bg_mobile.png
  AssetGenImage get icBgMobile => const AssetGenImage('assets/images/ic_bg_mobile.png');

  /// File path: assets/images/ic_creator_ellipse.png
  AssetGenImage get icCreatorEllipse => const AssetGenImage('assets/images/ic_creator_ellipse.png');

  /// File path: assets/images/ic_creator_icon.png
  AssetGenImage get icCreatorIcon => const AssetGenImage('assets/images/ic_creator_icon.png');

  /// File path: assets/images/ic_holder_ellipse.png
  AssetGenImage get icHolderEllipse => const AssetGenImage('assets/images/ic_holder_ellipse.png');

  /// File path: assets/images/ic_holder_icon.png
  AssetGenImage get icHolderIcon => const AssetGenImage('assets/images/ic_holder_icon.png');

  /// File path: assets/images/ic_logo.png
  AssetGenImage get icLogo => const AssetGenImage('assets/images/ic_logo.png');

  /// File path: assets/images/ic_logo_main.png
  AssetGenImage get icLogoMain => const AssetGenImage('assets/images/ic_logo_main.png');

  /// File path: assets/images/ic_menu_mobile.png
  AssetGenImage get icMenuMobile => const AssetGenImage('assets/images/ic_menu_mobile.png');

  /// File path: assets/images/ic_mobile_arc.png
  AssetGenImage get icMobileArc => const AssetGenImage('assets/images/ic_mobile_arc.png');

  /// File path: assets/images/ic_mobile_home.png
  AssetGenImage get icMobileHome => const AssetGenImage('assets/images/ic_mobile_home.png');

  /// File path: assets/images/ic_mobile_white_arc.png
  AssetGenImage get icMobileWhiteArc => const AssetGenImage('assets/images/ic_mobile_white_arc.png');

  /// File path: assets/images/ic_rectangle.png
  AssetGenImage get icRectangle => const AssetGenImage('assets/images/ic_rectangle.png');

  /// File path: assets/images/ic_web_arc.png
  AssetGenImage get icWebArc => const AssetGenImage('assets/images/ic_web_arc.png');

  /// File path: assets/images/ic_web_home.png
  AssetGenImage get icWebHome => const AssetGenImage('assets/images/ic_web_home.png');

  /// File path: assets/images/ic_web_white_arc.png
  AssetGenImage get icWebWhiteArc => const AssetGenImage('assets/images/ic_web_white_arc.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icBg,
        icBgMobile,
        icCreatorEllipse,
        icCreatorIcon,
        icHolderEllipse,
        icHolderIcon,
        icLogo,
        icLogoMain,
        icMenuMobile,
        icMobileArc,
        icMobileHome,
        icMobileWhiteArc,
        icRectangle,
        icWebArc,
        icWebHome,
        icWebWhiteArc
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
