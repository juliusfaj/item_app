import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006031),
      surfaceTint: Color(0xff006d39),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007b41),
      onPrimaryContainer: Color(0xffaaffc0),
      secondary: Color(0xffb90031),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe41342),
      onSecondaryContainer: Color(0xfffffaf9),
      tertiary: Color(0xff354ca3),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f65bd),
      onTertiaryContainer: Color(0xffeaebff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff6fbf3),
      onSurface: Color(0xff171d18),
      onSurfaceVariant: Color(0xff3f4940),
      outline: Color(0xff6f7a6f),
      outlineVariant: Color(0xffbecabd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322c),
      inversePrimary: Color(0xff77db96),
      primaryFixed: Color(0xff93f8b0),
      onPrimaryFixed: Color(0xff00210d),
      primaryFixedDim: Color(0xff77db96),
      onPrimaryFixedVariant: Color(0xff005229),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff40000b),
      secondaryFixedDim: Color(0xffffb3b4),
      onSecondaryFixedVariant: Color(0xff920025),
      tertiaryFixed: Color(0xffdde1ff),
      onTertiaryFixed: Color(0xff001453),
      tertiaryFixedDim: Color(0xffb8c4ff),
      onTertiaryFixedVariant: Color(0xff283f96),
      surfaceDim: Color(0xffd6dcd4),
      surfaceBright: Color(0xfff6fbf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ed),
      surfaceContainer: Color(0xffeaefe7),
      surfaceContainerHigh: Color(0xffe4eae2),
      surfaceContainerHighest: Color(0xffdfe4dc),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003f1f),
      surfaceTint: Color(0xff006d39),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007b41),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff73001b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffda023c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff112d85),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f65bd),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf3),
      onSurface: Color(0xff0d120e),
      onSurfaceVariant: Color(0xff2e3930),
      outline: Color(0xff4a554b),
      outlineVariant: Color(0xff657065),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322c),
      inversePrimary: Color(0xff77db96),
      primaryFixed: Color(0xff077e43),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006233),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffda023c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xffac002d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5167bf),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff374ea5),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc3c8c0),
      surfaceBright: Color(0xfff6fbf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ed),
      surfaceContainer: Color(0xffe4eae2),
      surfaceContainerHigh: Color(0xffd9ded6),
      surfaceContainerHighest: Color(0xffced3cb),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003418),
      surfaceTint: Color(0xff006d39),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00552b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff600015),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff960026),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00227a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2a4299),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf3),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff242f26),
      outlineVariant: Color(0xff414c42),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322c),
      inversePrimary: Color(0xff77db96),
      primaryFixed: Color(0xff00552b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003b1c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff960026),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6c0019),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff2a4299),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff0b2981),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb5bab3),
      surfaceBright: Color(0xfff6fbf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffedf2ea),
      surfaceContainer: Color(0xffdfe4dc),
      surfaceContainerHigh: Color(0xffd1d6ce),
      surfaceContainerHighest: Color(0xffc3c8c0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff77db96),
      surfaceTint: Color(0xff77db96),
      onPrimary: Color(0xff00391b),
      primaryContainer: Color(0xff007b41),
      onPrimaryContainer: Color(0xffaaffc0),
      secondary: Color(0xffffb3b4),
      onSecondary: Color(0xff680017),
      secondaryContainer: Color(0xffe41342),
      onSecondaryContainer: Color(0xfffffaf9),
      tertiary: Color(0xffb8c4ff),
      onTertiary: Color(0xff07267f),
      tertiaryContainer: Color(0xff4f65bd),
      onTertiaryContainer: Color(0xffeaebff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1510),
      onSurface: Color(0xffdfe4dc),
      onSurfaceVariant: Color(0xffbecabd),
      outline: Color(0xff889488),
      outlineVariant: Color(0xff3f4940),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dc),
      inversePrimary: Color(0xff006d39),
      primaryFixed: Color(0xff93f8b0),
      onPrimaryFixed: Color(0xff00210d),
      primaryFixedDim: Color(0xff77db96),
      onPrimaryFixedVariant: Color(0xff005229),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff40000b),
      secondaryFixedDim: Color(0xffffb3b4),
      onSecondaryFixedVariant: Color(0xff920025),
      tertiaryFixed: Color(0xffdde1ff),
      onTertiaryFixed: Color(0xff001453),
      tertiaryFixedDim: Color(0xffb8c4ff),
      onTertiaryFixedVariant: Color(0xff283f96),
      surfaceDim: Color(0xff0f1510),
      surfaceBright: Color(0xff353b35),
      surfaceContainerLowest: Color(0xff0a0f0b),
      surfaceContainerLow: Color(0xff171d18),
      surfaceContainer: Color(0xff1b211c),
      surfaceContainerHigh: Color(0xff262b26),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8df1aa),
      surfaceTint: Color(0xff77db96),
      onPrimary: Color(0xff002d14),
      primaryContainer: Color(0xff3fa364),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd1d2),
      onSecondary: Color(0xff530011),
      secondaryContainer: Color(0xffff5164),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd5daff),
      onTertiary: Color(0xff001c6b),
      tertiaryContainer: Color(0xff768be6),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1510),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd4e0d2),
      outline: Color(0xffa9b5a9),
      outlineVariant: Color(0xff889388),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dc),
      inversePrimary: Color(0xff00542a),
      primaryFixed: Color(0xff93f8b0),
      onPrimaryFixed: Color(0xff001507),
      primaryFixedDim: Color(0xff77db96),
      onPrimaryFixedVariant: Color(0xff003f1f),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff2d0005),
      secondaryFixedDim: Color(0xffffb3b4),
      onSecondaryFixedVariant: Color(0xff73001b),
      tertiaryFixed: Color(0xffdde1ff),
      onTertiaryFixed: Color(0xff000b3b),
      tertiaryFixedDim: Color(0xffb8c4ff),
      onTertiaryFixedVariant: Color(0xff112d85),
      surfaceDim: Color(0xff0f1510),
      surfaceBright: Color(0xff404640),
      surfaceContainerLowest: Color(0xff040805),
      surfaceContainerLow: Color(0xff191f1a),
      surfaceContainer: Color(0xff242924),
      surfaceContainerHigh: Color(0xff2e342f),
      surfaceContainerHighest: Color(0xff393f39),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbfffcd),
      surfaceTint: Color(0xff77db96),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff73d792),
      onPrimaryContainer: Color(0xff000f04),
      secondary: Color(0xffffeceb),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffadaf),
      onSecondaryContainer: Color(0xff220003),
      tertiary: Color(0xffeeefff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb2c0ff),
      onTertiaryContainer: Color(0xff00072d),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0f1510),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe7f3e6),
      outlineVariant: Color(0xffbac6b9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dc),
      inversePrimary: Color(0xff00542a),
      primaryFixed: Color(0xff93f8b0),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff77db96),
      onPrimaryFixedVariant: Color(0xff001507),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb3b4),
      onSecondaryFixedVariant: Color(0xff2d0005),
      tertiaryFixed: Color(0xffdde1ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffb8c4ff),
      onTertiaryFixedVariant: Color(0xff000b3b),
      surfaceDim: Color(0xff0f1510),
      surfaceBright: Color(0xff4c524c),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1b211c),
      surfaceContainer: Color(0xff2c322c),
      surfaceContainerHigh: Color(0xff373d37),
      surfaceContainerHighest: Color(0xff434842),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
