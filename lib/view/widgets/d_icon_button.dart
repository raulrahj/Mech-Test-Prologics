import 'package:flutter/material.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';

class DIconButton extends StatelessWidget {
  const DIconButton(
      {Key? key,
      this.onTap,
      this.bg = kSecondary,
      this.icon = Icons.arrow_back_ios,
      this.size = 18})
      : super(key: key);
  final int size;
  final Color bg;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: size.toDouble(),
        backgroundColor: bg,
        child: Align(
            alignment: Alignment.center,
            child: Icon(
              icon,
              color: kWhite,
            )),
      ),
    );
  }
}
