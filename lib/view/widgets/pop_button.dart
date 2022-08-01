import 'package:flutter/material.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';

class PopButton extends StatelessWidget {
  const PopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 30,
      // minWidth: 30,
      onPressed: () {},
      color: kYellow,
      textColor: Colors.white,
      padding: const EdgeInsets.all(6),
      shape: const CircleBorder(),
      child: const Icon(
        Icons.arrow_back_ios_rounded,
        size: 24,
      ),
    );
  }
}
