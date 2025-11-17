import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokebox/domain/utils/theme.dart';
import 'package:pokebox/screens/home_screen.dart';
import 'package:window_manager/window_manager.dart';

void main () async{

  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS))  {
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      size: Size(800, 600),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.normal,
    );

    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.setMinimumSize(const Size(800, 600));
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(const PokeBoxApp());
}


class PokeBoxApp extends StatelessWidget {
  const PokeBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // recommended baseline
      minTextAdapt: false,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: "PokeBox",
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: child,
        );
      },
      child: const HomeScreen(),
    );

  }
}
