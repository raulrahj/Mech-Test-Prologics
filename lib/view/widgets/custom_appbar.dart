import 'package:flutter/material.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:mech_test_prologics/view/config/sizes.dart';
import 'package:mech_test_prologics/view/widgets/d_icon_button.dart';
import 'package:mech_test_prologics/view/widgets/pop_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key,
      this.title = '',
      this.leading = const PopButton(),
      this.trailing})
      : super(key: key);
  final String title;
  final Widget leading;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
          child: Row(
            children: [
              leading,
              Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Center(
                          child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                    ],
                  )),
              LimitedBox(
                maxWidth: 210,
                child: trailing ??
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DIconButton(
                          size: 12,
                          onTap: () {},
                          icon: Icons.close,
                          bg: kGrey,
                        ),
                        width10,
                        DIconButton(
                          size: 12,
                          onTap: () {},
                          icon: Icons.done,
                          bg: kGreen,
                        ),
                        width10,
                      ],
                    ),
              )
            ],
          ),
        ));
  }
}
