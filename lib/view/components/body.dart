import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptappmobile/view/components/recommended_plans.dart';
import 'package:ptappmobile/view/components/title_with_more_btn.dart';

import 'header_with_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          RecommendedPlans(),
          TitleWithMoreBtn(
            title: "Featured routes",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedRoutes(
                  image: 'assets/images/machupicchu.jpg',
                  press: () {},
                ),
                FeaturedRoutes(
                  image: 'assets/images/machupicchu.jpg',
                  press: () {},
                ),
                FeaturedRoutes(
                  image: 'assets/images/machupicchu.jpg',
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedRoutes extends StatelessWidget {
  const FeaturedRoutes({Key? key, required this.image, required this.press})
      : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return GestureDetector(
      onTap: () => press,
      child: Container(
        margin: EdgeInsets.only(
          left: 20.0,
          top: 20 / 2,
          bottom: 20 / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
