import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:mech_test_prologics/view/config/sizes.dart';
import 'package:mech_test_prologics/view/config/styles.dart';
import 'package:mech_test_prologics/view/screens/screen1.dart';
import 'package:mech_test_prologics/view/screens/screen2.dart';
import 'package:mech_test_prologics/view/widgets/custom_appbar.dart';
import 'package:mech_test_prologics/view/widgets/custom_switchbutton.dart';
import 'package:mech_test_prologics/view/widgets/d_icon_button.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  StepperType stepperType = StepperType.vertical;
  bool isPicked = false;
  bool isStitching = false;
  bool isCompleted = false;
  bool isTaken = false;
  bool isDelivered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: const CustomAppBar(),
          preferredSize: Size(dWidth(context), 50),
        ),
        body: ListView(
            padding: const EdgeInsets.only(top: 4, right: 12, left: 12),
            children: [
              const ORDCustomContainer(
                padding: EdgeInsets.zero,
                contents: [
                  ORDProfileInfo(
                    name: 'Vijay',
                    number: "XXXXXXXXXX",
                  ),
                ],
              ),
              const DTitleWidget(
                title: 'Order Status',
              ),
              ORDCustomContainer(
                contents: [
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Item 1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Visibility(
                              visible: true,
                              child: Text(
                                'Category : Shirt | Rs : 450',
                                style:
                                    TextStyles.bodyGray.copyWith(fontSize: 12),
                              ))
                        ],
                      )),
                      const DIconButton(
                        bg: kYellow,
                        size: 14,
                        icon: Icons.keyboard_arrow_down_rounded,
                      )
                    ],
                  )
                ],
              ),
              LimitedBox(
                  maxHeight: dHeight(context) / 2,
                  child: Row(
                    children: [
                      IconStepper(
                        direction: Axis.vertical,
                        enableStepTapping: false,
                        lineLength: dHeight(context) / 17.9,
                        alignment: Alignment.centerLeft,
                        stepRadius: 15,
                        stepColor: Colors.grey[300],
                        activeStepBorderColor: kYellow,
                        activeStepColor: kYellow,
                        enableNextPreviousButtons: false,
                        activeStepBorderPadding: 0,
                        activeStepBorderWidth: 0,
                        lineColor: Colors.grey[400],
                        lineDotRadius: .7,
                        steppingEnabled: false,
                        icons: const [
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: kWhite,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: kWhite,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: kWhite,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: kWhite,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: kWhite,
                          ),
                        ],
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: 10,
                          // ),
                          OrderPress(
                              onchanged: (value) {},
                              title: 'Your Product Pickuped',
                              isValue: isPicked),
                          OrderPress(
                            onchanged: (value) {},
                            title: 'Your stitching start',
                            isValue: isStitching,
                          ),
                          OrderPress(
                            onchanged: (value) {},
                            title: 'Your product Completed',
                            isValue: isCompleted,
                          ),
                          OrderPress(
                            onchanged: (value) {},
                            title: 'Your Order Was Taken by Delevery Boy',
                            isValue: isTaken,
                          ),
                          OrderPress(
                            onchanged: (value) {},
                            title: 'Your Product Delivery',
                            isValue: isDelivered,
                          ),

                          // OrderPress(),
                          // OrderPress(),
                          // OrderPress(),
                          // OrderPress(),
                        ],
                      ))
                    ],
                  )),
            ]));
  }
}

class OrderPress extends StatelessWidget {
  const OrderPress(
      {Key? key,
      this.title = 'title',
      required this.onchanged,
      required this.isValue})
      : super(key: key);
  final Function(bool) onchanged;

  final bool isValue;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, color: kGrey),
      ),
      subtitle: const Text(
        'Date: 12/10/2021 - 10:05am',
        style: TextStyle(color: kGrey, fontSize: 10),
      ),
      trailing: SwitchControl(
          // thumbColor: kYellow,
          // inactiveThumbColor: kYellow,
          //   activeTrackColor: kWhite,
          //   trackColor: MaterialStateProperty.all(kWhite),
          // v
          //alue: false,
          isValueChange: isValue,
          onChanged: onchanged),
    );
  }
}
