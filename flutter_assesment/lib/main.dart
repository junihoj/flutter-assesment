import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assesment/core/config/app_theme.dart';
import 'package:flutter_assesment/core/utils/responsiveness/app_responsiveness.dart';
import 'package:flutter_assesment/screens/dashboard_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return MaterialApp(
      title: 'Medical Center UI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: DashboardScreen(),
    );
  }
}
