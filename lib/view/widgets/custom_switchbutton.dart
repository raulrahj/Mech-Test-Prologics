// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mech_test_prologics/provider/config_provider.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:provider/provider.dart';

class SwitchControl extends StatefulWidget {
  SwitchControl({Key? key, 
   required this.isValueChange ,
    required this.onChanged,
  }) : super(key: key);

 bool isValueChange;
  final ValueChanged<bool> onChanged;

  @override
  _SwitchControlState createState() => _SwitchControlState();
}

class _SwitchControlState extends State<SwitchControl> {
  Alignment switchControlAlignment = Alignment.centerLeft;
  // bool isValueChange = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigProvider>(
      builder: (context, value, child) => InkWell(
        splashColor: Colors.transparent,
        child: AnimatedContainer(
          key: UniqueKey(),
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate,
          width: 55,
          height: 23,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[400]!,
                  offset: const Offset(0, 2),
                  blurRadius: 1,
                  spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(100.0),
            color: value.isToggle ? kGrey : kWhite,
          ),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            alignment:
                value.isToggle ? Alignment.centerRight : Alignment.centerLeft,
            curve: Curves.decelerate,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: 23,
                height: 23,
                decoration: BoxDecoration(
                  color: kYellow,
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          // widget.isValueChange = !widget.isValueChange;
          // widget.isValueChange =!widget.isValueChange;
          Provider.of<ConfigProvider>(context, listen: false)
              .switchToggle(widget.isValueChange);
              widget.onChanged(widget.isValueChange);
          // setState() {
          //   widget.value = !widget.value;
          //   widget.onChanged(widget.value);
          // };
        },
      ),
    );
  }
}
