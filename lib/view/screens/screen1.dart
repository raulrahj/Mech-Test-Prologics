import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:mech_test_prologics/view/config/sizes.dart';
import 'package:mech_test_prologics/view/config/strings.dart';
import 'package:mech_test_prologics/view/config/styles.dart';
import 'package:mech_test_prologics/view/widgets/custom_appbar.dart';
import 'package:mech_test_prologics/view/widgets/d_icon_button.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 70), child: CustomAppBar()),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            children: [
              const ORDCustomContainer(
                contents: [
                  ORDTitle(
                    text: 'Dennis Lingo Men\'s Slim Fit Shirt',
                  ),
                  KVText(
                    kei: "Category",
                    value: "Men",
                  ),
                  KVText(
                    kei: "Sub-Category",
                    value: "Shirt",
                  ),
                  KVText(
                    kei: "Product Code",
                    value: '#18358',
                  ),
                  KVText(
                    kei: 'Service',
                    value: 'Stitching',
                  )
                ],
              ),
              const ORDCustomContainer(
                padding: EdgeInsets.zero,
                contents: [
                  ORDProfileInfo(
                    name: 'Vijay',
                    number: "XXXXXXXXXX",
                  ),
                ],
              ),
              const ORDAddressContainer(),
              Stack(
                children: [
                  ORDCustomContainer(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    contents: [
                      SizedBox(
                        height: dHeight(context) / 12,
                        child: Row(children: [
                          const Expanded(
                              child: ORDTimeShow(
                            title: 'Pick Up Date',
                            body: "12 - 04 - 2022",
                          )),
                          const VerticalDivider(
                            thickness: 2,
                            width: 2,
                          ),
                          const Expanded(
                              child: ORDTimeShow(
                            title: 'Pick Up Time',
                            body: "10:30 AM",
                          ))
                        ]),
                      )
                    ],
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit_calendar)),
                  )
                ],
              ),
              ORDCustomContainer(
                contents: [
                  SizedBox(
                    height: dHeight(context) / 15,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Appointment Date',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text('12-04-2022 | 12:25am to 12:30pm')
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            const Icon(Icons.done),
                            const Icon(Icons.calendar_month)
                          ],
                        ))
                      ],
                    ),
                  )
                ],
              ),
              const ORDProductImg(),
              const ORDCustomContainer(contents: [
                ORDTitle(
                  text: 'Addon Service',
                ),
                Text(
                  "Lining Quality Washed | Lining Quality Washed",
                  style: TextStyles.bodyGray,
                ),
                Text(
                  "Lining Quality Washed | Lining Quality Washed",
                  style: TextStyles.bodyGray,
                ),
              ]),
              ORDCustomContainer(
                contents: [
                  const ORDTitle(
                    text: 'Customer Tailor Notes',
                  ),
                  const Text(
                    loremIpsum,
                    style: TextStyle(
                        height: 1.3,
                        color: kGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: ORDTitle(
                          text: 'Customer Tailor Notes',
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(Icons.share)),
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(Icons.edit))
                        ],
                      ))
                    ],
                  ),
                  const Text(
                    loremIpsum,
                    style: TextStyle(
                        height: 1.3,
                        color: kGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  )
                ],
              ),
              const DottedText(text: 'Vendor Notes for Tailor'),
              const ORDProductImg(productNum: 'Product 2'),
              ORDCustomContainer(
                contents: [
                  const ORDTitle(
                    text: 'Order',
                  ),
                  const ORDERKV(
                    kei: 'Item 1',
                    value: '650.00',
                  ),
                  const ORDERKV(
                    kei: 'Adon',
                    value: '00.00',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      'Price: 650 | Text: 18% | Tax Amt: 55',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kGrey),
                    ),
                  ),
                  const Divider(),
                  ORDERKV(
                    kei: 'Taxable',
                    value: '705.00',
                    style: TextStyles.bodyGray
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  ORDERKV(
                    kei: 'Tax Amt',
                    value: '65.00',
                    style: TextStyles.bodyGray
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  const Divider(),
                  const ORDERKV(
                    kei: 'Total Amount',
                    value: '805.00',
                    style: TextStyles.titleLG,
                  ),
                ],
              ),
              const ORDCustomContainer(
                contents: [
                  ORDTitle(
                    text: 'Payment Mode',
                  ),
                  Text(
                    'Cash on Delivery',
                    style: TextStyles.bodyGray,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DottedText extends StatelessWidget {
  const DottedText({Key? key, this.text = ''}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 8),
      child: DottedBorder(
        color: kYellow,
        child: SizedBox(
          height: dHeight(context) / 17,
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: kYellow.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
        ),
      ),
    );
  }
}

class ORDERKV extends StatelessWidget {
  const ORDERKV(
      {Key? key,
      this.kei = '',
      this.value = '',
      this.style = TextStyles.titleMD})
      : super(key: key);
  final String kei;
  final String value;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            kei,
            style: style,
          ),
          Text(
            value,
            style: style,
          )
        ],
      ),
    );
  }
}

class ORDProductImg extends StatelessWidget {
  const ORDProductImg(
      {Key? key,
      this.isVisible = false,
      this.onTap,
      this.productNum = 'Product 1'})
      : super(key: key);
  final bool isVisible;
  final String productNum;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ORDCustomContainer(
      contents: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ORDTitle(
              text: productNum,
            ),
            DIconButton(
              bg: kYellow,
              icon: Icons.arrow_upward,
              onTap: onTap,
              size: 14,
            )
          ],
        ),
        Visibility(
          visible: isVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              const Text(
                'Material Image',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              LimitedBox(
                maxHeight: dHeight(context) / 8,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: dWidth(context) / 4.2,
                      // height: dHeight(context)/20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imgPlaceholder))),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class ORDTimeShow extends StatelessWidget {
  const ORDTimeShow({Key? key, this.body = '', this.title = ''})
      : super(key: key);
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ORDTitle(
            text: title,
          ),
          Text(
            body,
            style: TextStyles.bodyGray,
          )
        ],
      ),
    );
  }
}

class ORDAddressContainer extends StatelessWidget {
  const ORDAddressContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ORDCustomContainer(
      contents: [
        const ORDTitle(
          text: 'Address',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: RichText(
              text: TextSpan(
                  text: "No: 2/326, Malayanoor(Vill),",
                  style: TextStyles.bodyGray.copyWith(height: 2),
                  children: const [
                TextSpan(text: "\n"),
                TextSpan(
                  text: 'Ramagondahalli (PO), Pennagaram (Tk)',
                ),
                TextSpan(text: "\n"),
                TextSpan(text: 'Tamil nadu - 636810')
              ])),
        )
      ],
    );
  }
}

class ORDProfileInfo extends StatelessWidget {
  const ORDProfileInfo({Key? key, this.name = '', this.number = ''})
      : super(key: key);
  final String name;
  final String number;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 24,
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: RichText(
        text: TextSpan(
            text: "Contact",
            style: const TextStyle(
                color: kGrey, fontSize: 15, fontWeight: FontWeight.w500),
            children: [
              const TextSpan(text: " : "),
              TextSpan(
                  text: number,
                  style: const TextStyle(
                      color: kGrey, fontWeight: FontWeight.w500))
            ]),
      ),
    );
  }
}

class ORDCustomContainer extends StatelessWidget {
  const ORDCustomContainer(
      {Key? key,
      this.contents = const [],
      this.title = 'title',
      this.isVisibleTitle = true,
      this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 12)})
      : super(key: key);
  final String title;
  final List<Widget> contents;
  final bool isVisibleTitle;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 40,
      margin: const EdgeInsets.only(top: 6),
      padding: padding,
      decoration: BoxDecoration(
          border: Border.all(color: kSecondary),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: contents,
      ),
    );
  }
}

class KVText extends StatelessWidget {
  const KVText({Key? key, this.kei = '', this.value = ''}) : super(key: key);
  final String kei;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: RichText(
          text: TextSpan(
              text: kei,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: kTextBlack, fontSize: 15),
              children: [
            const TextSpan(
                text: " : ", style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: value, style: const TextStyle(color: kGrey))
          ])),
    );
  }
}

class ORDTitle extends StatelessWidget {
  const ORDTitle({Key? key, this.text = ''}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: kTextBlack, fontSize: 16),
    );
  }
}
