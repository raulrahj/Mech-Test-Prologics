import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:mech_test_prologics/view/config/sizes.dart';
import 'package:mech_test_prologics/view/config/strings.dart';
import 'package:mech_test_prologics/view/config/styles.dart';
import 'package:mech_test_prologics/view/widgets/d_icon_button.dart';
import "package:mech_test_prologics/view/widgets/dotted_divider.dart";
import 'package:mech_test_prologics/view/widgets/image_carousel.dart';
import 'package:mech_test_prologics/view/widgets/star_rating.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ImageCarousel(),
              Positioned(
                top: dHeight(context)/3.5,
                left: dWidth(context)/2.3,
                  child: Row(
                children: indicators(3, 2),
              )),
              const Positioned(
                top: 10,
                left: 10,
                child: DIconButton(
                  bg: kYellow,
                  size: 16,
                ),
              ),
              Positioned(
                top: dHeight(context) / 3,
                left: 12,
                right: 12,
                child: StackDisplay(),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(
                  top: dHeight(context) / 13, left: 20, right: 20),
              children: [
                PaddedContainer(
                  contents: [
                    const DTitleWidget(
                      title: 'Services',
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: HorizontalDottedList(items: services),
                        ),
                        const StartCount(count: '3.2'),
                      ],
                    ),
                  ],
                ),
                const DashDivider(),
                PaddedContainer(
                  contents: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const DTitleWidget(
                                title: 'Category',
                              ),
                              HorizontalDottedList(
                                items: category,
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.phone_in_talk_sharp,
                          color: kGreen,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
                const DashDivider(),
                PaddedContainer(
                  contents: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              DTitleWidget(
                                title: 'Benefits',
                              ),
                              Text(
                                'Material Pick up & Deivery Available',
                                style: TextStyles.bodyGray,
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.chat,
                          color: kYellow,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
                const DashDivider(),
                PaddedContainer(
                  contents: [
                    const DTitleWidget(
                      title: 'Description',
                    ),
                    Text(
                      loremIpsum,
                      style: TextStyles.bodyGray
                          .copyWith(height: 1.4, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const DashDivider(),
                PaddedContainer(
                  contents: [
                    const DTitleWidget(
                      title: 'Rating & Comments',
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 4,
                          child: StarContainer(),
                        ),
                        Expanded(
                            child: HighlightRating(
                          count: 54,
                          percentage: 4.3,
                        ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomButton(),
                          Text(
                            'Reviews(12)',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 19),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: const [
                        CustomListTile(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            loremIpsum,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StackDisplay extends StatelessWidget {
  const StackDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dHeight(context) / 8,
      decoration: BoxDecoration(
          // color: kYellow,
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xfffb9f83),
              Color(0xfff5cd66),
            ],
          ),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              InsideStackText(
                icon: Icons.local_print_shop_sharp,
                text: "Shop Name",
              ),
              InsideStackText(
                icon: Icons.location_on_outlined,
                text: 'Johnson Road, T.Nagar',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: kWhite),
              ),
            ],
          )),
          DottedBorder(
            color: kWhite,
            child: IconButton(
              padding: const EdgeInsets.symmetric(vertical: 30),
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: kWhite,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: kWhite,
            ),
          ),
        ],
      ),
    );
  }
}

class HighlightRating extends StatelessWidget {
  const HighlightRating({Key? key, this.count = 0, this.percentage = 0.0})
      : super(key: key);
  final double percentage;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          percentage.toString(),
          style: const TextStyle(
              color: kGreen, fontSize: 44, fontWeight: FontWeight.w900),
        ),
        Text(
          '${count.toString()} Rating',
          style: const TextStyle(color: kGreen, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class StarContainer extends StatelessWidget {
  const StarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        StarCountPanel(starCont: 5, ratingCount: 16),
        StarCountPanel(
          starCont: 4,
          ratingCount: 08,
        ),
        StarCountPanel(
          starCont: 3,
          ratingCount: 06,
        ),
        StarCountPanel(
          starCont: 2,
          ratingCount: 02,
        ),
        StarCountPanel(
          ratingCount: 01,
        )
      ],
    );
  }
}

class StarCountPanel extends StatelessWidget {
  const StarCountPanel({Key? key, this.ratingCount = 1, this.starCont = 1})
      : super(key: key);
  final int starCont;
  final int ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StarRating(
          starCount: starCont,
          iconSize: 26,
        ),
        width10,
        Text(
          ratingCount.toString().padLeft(2, '0'),
          style: TextStyles.bodyGray.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.edit_outlined,
      ),
      label: const Text(
        'Write a Review',
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kYellow),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        side: MaterialStateProperty.all(const BorderSide(color: kYellow)),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const CircleAvatar(),
          width10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'John William',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    StarRating(
                      starCount: 3,
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            'June 5, 2021',
            style: TextStyles.bodyGray
                .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class PaddedContainer extends StatelessWidget {
  const PaddedContainer({Key? key, this.contents = const []}) : super(key: key);
  final List<Widget> contents;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 12),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: contents),
    );
  }
}

class HorizontalDottedList extends StatelessWidget {
  const HorizontalDottedList({Key? key, this.items = const []})
      : super(key: key);
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 25,
      child: ListView.separated(
        separatorBuilder: (context, index) => width10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String data = items[index];
          return DottedBorder(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            color: kYellow,
            child: Center(
              child: Text(
                data,
                style: TextStyles.bodyGray
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}

class StartCount extends StatelessWidget {
  const StartCount({Key? key, this.count = '0.0'}) : super(key: key);
  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: kYellow,
          size: 28,
        ),
        width4,
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}

class DTitleWidget extends StatelessWidget {
  const DTitleWidget({Key? key, this.title = 'Title'}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}

class InsideStackText extends StatelessWidget {
  const InsideStackText(
      {Key? key,
      this.icon,
      this.text,
      this.style = const TextStyle(
          fontWeight: FontWeight.bold, color: kWhite, fontSize: 18)})
      : super(key: key);
  final String? text;
  final IconData? icon;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 5),
      child: Row(
        children: [
          Icon(
            icon,
            color: kWhite,
          ),
          width10,
          Text(
            text ?? '',
            style: style,
          )
        ],
      ),
    );
  }
}
