import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:mech_test_prologics/provider/config_provider.dart';
import 'package:mech_test_prologics/provider/screen3_controller.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:mech_test_prologics/view/config/sizes.dart';
import 'package:mech_test_prologics/view/config/strings.dart';
import 'package:mech_test_prologics/view/config/styles.dart';
import 'package:mech_test_prologics/view/screens/screen1.dart';
import 'package:mech_test_prologics/view/screens/screen2.dart';
import 'package:mech_test_prologics/view/widgets/custom_appbar.dart';
import 'package:mech_test_prologics/view/widgets/custom_switchbutton.dart';
import 'package:mech_test_prologics/view/widgets/d_icon_button.dart';
import 'package:provider/provider.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  StepperType stepperType = StepperType.vertical;
  bool isItem1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(dWidth(context), 70),
            child: const CustomAppBar(title: 'Order Details - ORD123123',trailing: SizedBox(),),
          ),
          body: ListView(
              padding: const EdgeInsets.only(top: 4, right: 12, left: 12),
              children: [
                ORDCustomContainer(
                  padding: EdgeInsets.zero,
                  contents: [
                    ORDProfileInfo(
                      imgUrl: profileImg,
                      name: 'Vijay',
                      number: "XXXXXXXXXX",
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: DTitleWidget(
                    title: 'Order Status',
                  ),
                ),
                OrderStatusWidget(
                  isVisible: isItem1,
                  itmeNum: 1,
                ),
                const OrderStatusWidget(
                  isVisible: false,
                  itmeNum: 2,
                ),
                const OrderStatusWidget(
                  isVisible: false,
                  itmeNum: 3,
                )
              ])),
    );
  }
}

class OrderPress extends StatelessWidget {
  const OrderPress(
      {Key? key,
      this.title = 'title',
      required this.onchanged,
      required this.isValue})
      : super(key: key);
  final void Function(bool) onchanged;

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
          key: key,
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

class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget({Key? key, this.itmeNum = 0, required this.isVisible})
      : super(key: key);
  final int itmeNum;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    bool isPicked = false;
    bool isStitching = false;
    bool isCompleted = false;
    bool isTaken = false;
    bool isDelivered = false;
    return Consumer<ConfigProvider>(builder: (context, data, child) {
      return Column(
        children: [
          ORDCustomContainer(
            contents: [
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Item $itmeNum',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Visibility(
                          visible: data.isExpand,
                          child: Text(
                            'Category : Shirt | Rs : 450',
                            style: TextStyles.bodyGray.copyWith(fontSize: 12),
                          ))
                    ],
                  )),
                  DIconButton(
                    onTap: () {
                      context
                          .read<ConfigProvider>()
                          .orderStatusVisibility(isVisible);
                    },
                    bg: kYellow,
                    size: 14,
                    icon: data.isExpand
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                  )
                ],
              )
            ],
          ),
          Visibility(
            visible: data.isExpand,
            child: Consumer<ScreenThreeProvider>(
                builder: (context, newvalue, child) {
              return LimitedBox(
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
                              onchanged: (value) {
                                // print(value);
                                isPicked = !isPicked;
                                Provider.of<ScreenThreeProvider>(context,
                                        listen: false)
                                    .changePickup(isPicked);
                                print("isPicked $isPicked");
                              },
                              title: 'Your Product Pickuped',
                              isValue: newvalue.isPicked),
                          OrderPress(
                            key: UniqueKey(),
                            onchanged: (value) {
                              isStitching = !isStitching;
                              Provider.of<ScreenThreeProvider>(context,
                                      listen: false)
                                  .changeStitching(isStitching);
                            },
                            title: 'Your stitching start',
                            isValue: newvalue.isStitching,
                          ),
                          OrderPress(
                            onchanged: (value) {
                              isCompleted = !isCompleted;
                              Provider.of<ScreenThreeProvider>(context,
                                      listen: false)
                                  .changeCompleted(isCompleted);
                            },
                            title: 'Your product Completed',
                            isValue: newvalue.isCompleted,
                          ),
                          OrderPress(
                            onchanged: (value) {
                              isTaken = !isTaken;
                              Provider.of<ScreenThreeProvider>(context,
                                      listen: false)
                                  .changeTaken(isTaken);
                            },
                            title: 'Your Order Was Taken by Delevery Boy',
                            isValue: newvalue.isTaken,
                          ),
                          OrderPress(
                            onchanged: (value) {
                              isDelivered = !isDelivered;
                              Provider.of<ScreenThreeProvider>(context,
                                      listen: false)
                                  .changeDeliverd(isDelivered);
                            },
                            title: 'Your Product Delivery',
                            isValue: newvalue.isDelivered,
                          ),

                          // OrderPress(),
                          // OrderPress(),
                          // OrderPress(),
                          // OrderPress(),
                        ],
                      ))
                    ],
                  ));
            }),
          ),
        ],
      );
    });
  }
}
