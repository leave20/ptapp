import 'package:flutter/material.dart';

class RecommendedPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlanCard(
            country: 'Perú',
            price: 440,
            image: 'assets/images/screen-0.jpg',
            title: 'Cuzco',
            press: () {},
          ),
          RecommendedPlanCard(
            country: 'Perú',
            price: 440,
            image: 'assets/images/screen-0.jpg',
            title: 'Cuzco',
            press: () {},
          ),
          RecommendedPlanCard(
            country: 'Perú',
            price: 440,
            image: 'assets/images/screen-0.jpg',
            title: 'Cuzco',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendedPlanCard extends StatelessWidget {
  const RecommendedPlanCard(
      {Key? key,
        required this.image,
        required this.title,
        required this.country,
        required this.price,
        required this.press})
      : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 20.0 / 2,
        bottom: 20.0 * 2.5,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: () => press,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(20.0 / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.black87.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$ $price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}