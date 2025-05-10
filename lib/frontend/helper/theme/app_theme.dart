import 'package:collectily/frontend/helper/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Light theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryLight,
        onPrimary: AppColors.textOnPrimary,
        secondary: AppColors.secondaryColor,
        onSecondary: Colors.white,
        error: AppColors.error,
        onError: Colors.white,
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,
      ),
      textTheme: TextTheme(
        // Display styles
        displayLarge: TextStyle(color: AppColors.textPrimary, fontSize: 57, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: AppColors.textPrimary, fontSize: 45, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: AppColors.textPrimary, fontSize: 36, fontWeight: FontWeight.bold),
        
        // Headline styles
        headlineLarge: TextStyle(color: AppColors.textPrimary, fontSize: 32, fontWeight: FontWeight.w600),
        headlineMedium: TextStyle(color: AppColors.textPrimary, fontSize: 28, fontWeight: FontWeight.w600),
        headlineSmall: TextStyle(color: AppColors.textPrimary, fontSize: 24, fontWeight: FontWeight.w600),
        
        // Title styles
        titleLarge: TextStyle(color: AppColors.textPrimary, fontSize: 22, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: AppColors.textPrimary, fontSize: 16, fontWeight: FontWeight.w600),
        titleSmall: TextStyle(color: AppColors.textPrimary, fontSize: 14, fontWeight: FontWeight.w600),
        
        // Body styles
        bodyLarge: TextStyle(color: AppColors.textPrimary, fontSize: 16, fontWeight: FontWeight.normal),
        bodyMedium: TextStyle(color: AppColors.textPrimary, fontSize: 14, fontWeight: FontWeight.normal),
        bodySmall: TextStyle(color: AppColors.textSecondary, fontSize: 12, fontWeight: FontWeight.normal),
        
        // Label styles
        labelLarge: TextStyle(color: AppColors.textPrimary, fontSize: 14, fontWeight: FontWeight.w500),
        labelMedium: TextStyle(color: AppColors.textPrimary, fontSize: 12, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(color: AppColors.textSecondary, fontSize: 11, fontWeight: FontWeight.w500),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 162, 73, 245),
          foregroundColor: AppColors.textOnPrimary,
        ),
      ),
      
      // Drawer theme
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.secondaryLight,
        scrimColor: AppColors.textPrimary.withOpacity(0.5),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
      ),
      
      // Styles for drawer items
      listTileTheme: ListTileThemeData(
        tileColor: AppColors.secondaryLight,
        selectedTileColor: AppColors.secondaryLight.withOpacity(0.1),
        iconColor: AppColors.surface,
        textColor: AppColors.surface,
        selectedColor: AppColors.primaryLight,
        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minLeadingWidth: 24,
        minVerticalPadding: 16,
      ),
      
      // Divider theme for drawer sections
      dividerTheme: DividerThemeData(
        color: AppColors.secondaryLight.withOpacity(0.2),
        thickness: 1,
        space: 1,
        indent: 16,
        endIndent: 16,
      ),
      
      // Textfield theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.secondaryLight, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColors.secondaryLight, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColors.primaryLight, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColors.error, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColors.error, width: 2.0),
        ),
        labelStyle: TextStyle(color: AppColors.textSecondary),
        hintStyle: TextStyle(color: AppColors.textSecondary.withOpacity(0.7)),
        prefixIconColor: AppColors.primaryLight,
        suffixIconColor: AppColors.secondaryColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      
      // Add more component themes as needed
    );
  }

  // Dark theme (if needed)
  static ThemeData get darkTheme {
    // Implement dark theme
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryDark,
        onPrimary: AppColors.textOnPrimary,
        secondary: AppColors.secondaryColor,
        onSecondary: Colors.white,
        error: AppColors.error,
        onError: Colors.white,
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,
        background: Colors.black87,
        onBackground: AppColors.textOnPrimary,
      ),
      textTheme: TextTheme(
        // Display styles
        displayLarge: TextStyle(color: AppColors.textOnPrimary, fontSize: 57, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: AppColors.textOnPrimary, fontSize: 45, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: AppColors.textOnPrimary, fontSize: 36, fontWeight: FontWeight.bold),
        
        // Headline styles
        headlineLarge: TextStyle(color: AppColors.textOnPrimary, fontSize: 32, fontWeight: FontWeight.w600),
        headlineMedium: TextStyle(color: AppColors.textOnPrimary, fontSize: 28, fontWeight: FontWeight.w600),
        headlineSmall: TextStyle(color: AppColors.textOnPrimary, fontSize: 24, fontWeight: FontWeight.w600),
        
        // Title styles
        titleLarge: TextStyle(color: AppColors.textOnPrimary, fontSize: 22, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: AppColors.textOnPrimary, fontSize: 16, fontWeight: FontWeight.w600),
        titleSmall: TextStyle(color: AppColors.textOnPrimary, fontSize: 14, fontWeight: FontWeight.w600),
        
        // Body styles
        bodyLarge: TextStyle(color: AppColors.textOnPrimary, fontSize: 16, fontWeight: FontWeight.normal),
        bodyMedium: TextStyle(color: AppColors.textOnPrimary, fontSize: 14, fontWeight: FontWeight.normal),
        bodySmall: TextStyle(color: AppColors.textSecondary, fontSize: 12, fontWeight: FontWeight.normal),
        
        // Label styles
        labelLarge: TextStyle(color: AppColors.textOnPrimary, fontSize: 14, fontWeight: FontWeight.w500),
        labelMedium: TextStyle(color: AppColors.textOnPrimary, fontSize: 12, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(color: AppColors.textSecondary, fontSize: 11, fontWeight: FontWeight.w500),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryDark,
          foregroundColor: AppColors.textOnPrimary,
        ),
      ),
    );
  }
}