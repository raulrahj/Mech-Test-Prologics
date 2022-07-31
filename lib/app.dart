import 'package:flutter/material.dart';
import 'package:mech_test_prologics/provider/config_provider.dart';
import 'package:mech_test_prologics/view/screens/navigation.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConfigProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Mech Test',
        home: NavigationScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
