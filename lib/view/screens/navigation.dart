import 'package:flutter/material.dart';
import 'package:mech_test_prologics/provider/config_provider.dart';
import 'package:mech_test_prologics/view/screens/screen1.dart';
import 'package:mech_test_prologics/view/screens/screen2.dart';
import 'package:mech_test_prologics/view/screens/screen3.dart';
import 'package:mech_test_prologics/view/widgets/custom_bottomnav.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatelessWidget {
  NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigProvider>(builder: (context, newData, child) {
      return Scaffold(
        bottomNavigationBar: const CustomBottomNav(),
        body: pages[newData.index],
      );
    });
  }

  final pages = [const ScreenOne(), const ScreenTwo(), const ScreenThree()];
}
