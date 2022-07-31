import 'package:flutter/material.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:mech_test_prologics/view/widgets/d_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: kGrey))),
          child: Row(
            children: [
              const Expanded(
                  child: DIconButton(
                    size: 16,
                bg: kYellow,
              )),
              const Expanded(
                  flex: 2,
                  child: Center(
                      child: Text(
                    "ORD12313",
                    style: TextStyle(fontSize: 17),
                  ))),
              Expanded(
                  child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DIconButton(
                    size: 13,
                    onTap: () {},
                    icon: Icons.close,
                    bg: kGrey,
                  ),
                  DIconButton(size: 13, onTap: () {}, icon: Icons.close,bg: kGreen,)
                ],
              ))
            ],
          ),
        ));
  }
}
