import 'package:flutter/material.dart';
import 'package:mech_test_prologics/view/config/app_colors.dart';
import 'package:mech_test_prologics/view/config/sizes.dart';
import 'package:mech_test_prologics/view/config/strings.dart';

PageController _pageController =
    PageController(viewportFraction: 1, initialPage: 1);
int activePage = 1;

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200,
      height: dHeight(context) / 2.5,

      width: dWidth(context),
      child: PageView.builder(
          itemCount: images.length,
          pageSnapping: true,
          padEnds: false,
          controller: _pageController,
          onPageChanged: (page) {
            // setState(() {
            activePage = page;
            // });
          },
          itemBuilder: (context, pagePosition) {
            return Container(
              width: dWidth(context),
              // margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        // scale: 1,
                        images[pagePosition],
                      ),
                      fit: BoxFit.cover)),
              // child: Image.network(images[pagePosition],fit: BoxFit.fill,),
            );
          }),
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? kYellow : kWhite,
          shape: BoxShape.circle),
    );
  });
}
