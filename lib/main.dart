import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:retailpro_v1/view/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: Size(size.height, size.width),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(
                  textScaler: TextScaler.linear(
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? 0.9
                          : 1)),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Retail Pro',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          themeMode: ThemeMode.light,
          home: const DashboardPage(),
        );
      },
    );
  }
}
