import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // Light Theme Colors
  static const lightPrimary = Color(0xFF1E4BB8);
  static const lightOnPrimary = Colors.white;
  static const lightPrimaryContainer = Color(0xFFD8E2FF);
  static const lightOnPrimaryContainer = Color(0xFF00174D);

  static const lightSecondary = Color(0xFF4D5E91);
  static const lightOnSecondary = Colors.white;
  static const lightSecondaryContainer = Color(0xFFDCE1FF);
  static const lightOnSecondaryContainer = Color(0xFF0E1B44);

  static const lightTertiary = Color(0xFF2E7D9C);
  static const lightOnTertiary = Colors.white;
  static const lightTertiaryContainer = Color(0xFFC8E6F2);
  static const lightOnTertiaryContainer = Color(0xFF002933);

  static const lightError = Color(0xFFBA1A1A);
  static const lightOnError = Colors.white;
  static const lightErrorContainer = Color(0xFFFFDAD6);
  static const lightOnErrorContainer = Color(0xFF410002);

  static const lightBackground = Color(0xFFF8FAFF);
  static const lightOnBackground = Color(0xFF0D1B2A);

  static const lightSurface = Color(0xFFF9FBFF);
  static const lightOnSurface = Color(0xFF0F1B2E);

  // Dark Theme Colors
  static const darkPrimary = Color(0xFFAEC6FF);
  static const darkOnPrimary = Color(0xFF002D6E);
  static const darkPrimaryContainer = Color(0xFF1E4BB8);
  static const darkOnPrimaryContainer = Color(0xFFD8E2FF);

  static const darkSecondary = Color(0xFFB7C4FF);
  static const darkOnSecondary = Color(0xFF172452);
  static const darkSecondaryContainer = Color(0xFF2D3B6B);
  static const darkOnSecondaryContainer = Color(0xFFDCE1FF);

  static const darkTertiary = Color(0xFFA8DFF0);
  static const darkOnTertiary = Color(0xFF003544);
  static const darkTertiaryContainer = Color(0xFF005C73);
  static const darkOnTertiaryContainer = Color(0xFFC8E6F2);

  static const darkError = Color(0xFFFFB4AB);
  static const darkOnError = Color(0xFF690005);
  static const darkErrorContainer = Color(0xFF93000A);
  static const darkOnErrorContainer = Color(0xFFFFDAD6);

  static const darkBackground = Color(0xFF0A1628);
  static const darkOnBackground = Color(0xFFE0E7FF);

  static const darkSurface = Color(0xFF0C182C);
  static const darkOnSurface = Color(0xFFE2E7F4);
}


class ColorFamily {
  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;

  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });
}


class AppTypography {
  // White text theme (for dark background)
  static final TextTheme whiteQuattrocento = GoogleFonts.quattrocentoSansTextTheme(
    const TextTheme(
      displayLarge: TextStyle(color: Colors.white70, decoration: TextDecoration.none),
      displayMedium: TextStyle(color: Colors.white70, decoration: TextDecoration.none),
      displaySmall: TextStyle(color: Colors.white70, decoration: TextDecoration.none),
      headlineLarge: TextStyle(color: Colors.white70, decoration: TextDecoration.none),
      headlineMedium: TextStyle(color: Colors.white70, decoration: TextDecoration.none),
      headlineSmall: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      titleLarge: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      titleMedium: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      titleSmall: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      bodyLarge: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      bodyMedium: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      bodySmall: TextStyle(color: Colors.white70, decoration: TextDecoration.none),
      labelLarge: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      labelMedium: TextStyle(color: Colors.white, decoration: TextDecoration.none),
      labelSmall: TextStyle(color: Colors.white, decoration: TextDecoration.none),
    ),
  );

  // Black text theme (for light background)
  static final TextTheme blackQuattrocento = GoogleFonts.quattrocentoSansTextTheme(
    const TextTheme(
      displayLarge: TextStyle(color: Colors.black54, decoration: TextDecoration.none),
      displayMedium: TextStyle(color: Colors.black54, decoration: TextDecoration.none),
      displaySmall: TextStyle(color: Colors.black54, decoration: TextDecoration.none),
      headlineLarge: TextStyle(color: Colors.black54, decoration: TextDecoration.none),
      headlineMedium: TextStyle(color: Colors.black54, decoration: TextDecoration.none),
      headlineSmall: TextStyle(color: Colors.black87, decoration: TextDecoration.none),
      titleLarge: TextStyle(color: Colors.black87, decoration: TextDecoration.none),
      titleMedium: TextStyle(color: Colors.black87, decoration: TextDecoration.none),
      titleSmall: TextStyle(color: Colors.black, decoration: TextDecoration.none),
      bodyLarge: TextStyle(color: Colors.black87, decoration: TextDecoration.none),
      bodyMedium: TextStyle(color: Colors.black87, decoration: TextDecoration.none),
      bodySmall: TextStyle(color: Colors.black54, decoration: TextDecoration.none),
      labelLarge: TextStyle(color: Colors.black87, decoration: TextDecoration.none),
      labelMedium: TextStyle(color: Colors.black, decoration: TextDecoration.none),
      labelSmall: TextStyle(color: Colors.black, decoration: TextDecoration.none),
    ),
  );
}



class AppTheme{

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lightPrimary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimary,
      onPrimary: AppColors.lightOnPrimary,
      secondary: AppColors.lightSecondary,
      onSecondary: AppColors.lightOnSecondary,
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightOnSurface,
      error: AppColors.lightError,
      onError: AppColors.lightOnError,
    ),
    textTheme: AppTypography.whiteQuattrocento ,
  );


  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
      onPrimary: AppColors.darkOnPrimary,
      secondary: AppColors.darkSecondary,
      onSecondary: AppColors.darkOnSecondary,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkOnSurface,
      error: AppColors.darkError,
      onError: AppColors.darkOnError,
    ),
    textTheme: AppTypography.blackQuattrocento,
  );
}



/// ------------------------------------------------------------
/// TEXT THEME EXTENSIONS
/// ------------------------------------------------------------
extension TextThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  // Quick access to common text styles
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;

  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;

  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;

  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;
}

/// ------------------------------------------------------------
/// THEME + COLOR SCHEME EXTENSIONS
/// ------------------------------------------------------------
extension AppThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;

  bool get isDarkMode => theme.brightness == Brightness.dark;
  bool get isLightMode => theme.brightness == Brightness.light;

  // Basic Theme Colors (no external dependencies)
  Color get primaryColor => colorScheme.primary;
  Color get secondaryColor => colorScheme.secondary;
  Color get backgroundColor => colorScheme.background;
  Color get surfaceColor => colorScheme.surface;
  Color get errorColor => colorScheme.error;

  Color get textPrimary => colorScheme.onBackground;
  Color get textSecondary => colorScheme.onSurfaceVariant;
  Color get borderColor => colorScheme.outline;
  Color get dividerColor => colorScheme.outlineVariant;
}

/// ------------------------------------------------------------
/// ICON THEME EXTENSIONS
/// ------------------------------------------------------------
extension IconThemeExtension on BuildContext {
  IconThemeData get iconTheme => Theme.of(this).iconTheme;

  Color? get iconColor => iconTheme.color;
  double? get iconSize => iconTheme.size;
}

extension TextStyleSafeCopy on TextStyle? {
  TextStyle safeCopy({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextOverflow? overflow,
  }) {
    return (this ?? const TextStyle()).copyWith(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      decoration: decoration,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      overflow: overflow,
    );
  }
}

/// ------------------------------------------------------------
/// MEDIA QUERY + RESPONSIVE EXTENSIONS
/// ------------------------------------------------------------
extension SizeExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get screenSize => mediaQuery.size;
  double get width => screenSize.width;
  double get height => screenSize.height;

  // Screen breakpoints
  bool get isMobile => width < 768;
  bool get isTablet => width >= 768 && width < 1024;
  bool get isDesktop => width >= 1024;

  // Responsive padding
  double get horizontalPadding => isMobile ? 16.0 : 24.0;
  double get verticalPadding => isMobile ? 16.0 : 24.0;

  // Safe area
  EdgeInsets get padding => mediaQuery.padding;
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  double get topPadding => padding.top;
  double get bottomPadding => padding.bottom;
}

/// ------------------------------------------------------------
/// SPACING EXTENSIONS
/// ------------------------------------------------------------
extension SpacingExtension on BuildContext {
  double get spacing4 => 4.0;
  double get spacing8 => 8.0;
  double get spacing12 => 12.0;
  double get spacing16 => 16.0;
  double get spacing20 => 20.0;
  double get spacing24 => 24.0;
  double get spacing32 => 32.0;
  double get spacing48 => 48.0;

  // Responsive spacing
  double get cardPadding => isMobile ? 16.0 : 24.0;
  double get sectionSpacing => isMobile ? 24.0 : 32.0;
  double get elementSpacing => isMobile ? 12.0 : 16.0;
}

/// ------------------------------------------------------------
/// UI COMPONENT SHORTCUTS
/// ------------------------------------------------------------
extension UIExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  AppBarThemeData get appBarTheme => theme.appBarTheme;
  CardThemeData get cardTheme => theme.cardTheme;

  ElevatedButtonThemeData get elevatedButtonTheme => theme.elevatedButtonTheme;
  TextButtonThemeData get textButtonTheme => theme.textButtonTheme;
  OutlinedButtonThemeData get outlinedButtonTheme => theme.outlinedButtonTheme;

  InputDecorationThemeData get inputDecorationTheme => theme.inputDecorationTheme;

  // Common border radius
  BorderRadius get borderRadiusSmall => BorderRadius.circular(8.0);
  BorderRadius get borderRadiusMedium => BorderRadius.circular(12.0);
  BorderRadius get borderRadiusLarge => BorderRadius.circular(16.0);
  BorderRadius get borderRadiusXLarge => BorderRadius.circular(24.0);
}
