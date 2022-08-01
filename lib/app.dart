import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mech_test_prologics/provider/config_provider.dart';
import 'package:mech_test_prologics/provider/screen1_controller.dart';
import 'package:mech_test_prologics/provider/screen2_controller.dart';
import 'package:mech_test_prologics/provider/screen3_controller.dart';
import 'package:mech_test_prologics/view/screens/navigation.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ConfigProvider()),
        ChangeNotifierProvider(create: (context) => ScreenOneProvider()),
        ChangeNotifierProvider(create: (context) => ScreenTwoProvider()),
        ChangeNotifierProvider(create: (context) => ScreenThreeProvider())
      ],
      child: MaterialApp(
        title: 'Mech Test',
        home: NavigationScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.dmSans().fontFamily
        ),
      ),
    );
  }
}
