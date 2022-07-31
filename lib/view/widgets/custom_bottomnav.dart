import 'package:flutter/material.dart';
import 'package:mech_test_prologics/provider/config_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigProvider>(builder: (context, newData, child) {
      return BottomNavigationBar(
        currentIndex: newData.index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '2'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '3'),
        ],
        onTap: (index) => Provider.of<ConfigProvider>(context, listen: false)
            .changeIndex(index),
      );
    });
  }
}
