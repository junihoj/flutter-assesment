import 'package:flutter/widgets.dart';

/// The reference size is based on a common phone screen, and all calculations
/// are scaled from that.
class ResponsiveSize {
  static late double screenWidth;
  static late double screenHeight;

  /// Initializes the responsive size utility with the current screen dimensions.
  /// 
  /// This should be called once at the start of your application, for example,
  /// in your main `MaterialApp` widget or a top-level provider.
  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  /// The provided height is scaled proportionally to the current screen height.
  static double height(double size) {
    // Reference screen height (e.g., iPhone 11 Pro).
    const double referenceHeight = 812.0;
    return size * (screenHeight / referenceHeight);
  }

  /// The provided width is scaled proportionally to the current screen width.
  static double width(double size) {
    // Reference screen width (e.g., iPhone 11 Pro).
    const double referenceWidth = 375.0;
    return size * (screenWidth / referenceWidth);
  }

  /// The provided font size is scaled proportionally to the current screen width.
  static double fontSize(double size) {
    // We use screen width for font size to ensure it doesn't get too large
    // on devices with very tall screens.
    const double referenceWidth = 375.0;
    return size * (screenWidth / referenceWidth);
  }
}

/// In your main.dart build method
// @override
// Widget build(BuildContext context) {
//   ResponsiveSize.init(context);
//   return MaterialApp(
//     // ... your app
//   );
// }
