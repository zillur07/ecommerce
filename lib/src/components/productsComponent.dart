import 'package:ecommerce_app_project/src/controllers/productsController.dart';
import 'package:ecommerce_app_project/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';

class ProductsComponent extends StatelessWidget {
  final _productsC = Get.put(ProductsController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: GridView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: _productsC.products.length,
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .6,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12),
        itemBuilder: (BuildContext context, int index) {
          final item = _productsC.products[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 42),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor('${item['bgColor']}'),
                          radius: 57,
                        ),
                        CircleAvatar(
                          backgroundColor: HexColor('ffffff'),
                          radius: 52,
                        ),
                        CircleAvatar(
                          backgroundColor: HexColor('${item['bgColor']}'),
                          radius: 50,
                        ),
                        Positioned(
                          child: Image.asset(
                            '${item['imageProduct']}',
                            width: 115,
                            height: 125,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    height: 22,
                    width: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // color: Colors.redAccent.withOpacity(.8),
                      color: HexColor('6EA2FF'),
                    ),
                    child: Center(
                      child: KText(
                        text: '${item['offer']}',
                        color: HexColor('ffffff'),
                        fontFamily: "Cera Bold",
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    child: Icon(
                      Icons.favorite,
                      size: 17,
                      color: Colors.white,
                    ),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(50),
                      // color: Colors.redAccent.withOpacity(.8),
                      color: HexColor('${item['fevaritColor']}'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  child: Column(
                    children: [
                      KText(
                          text: '${item['title']}',
                          fontFamily: 'Cera Bold',
                          fontSize: 17,
                          color: HexColor('4E55AF')),
                      SizedBox(
                        height: 7,
                      ),
                      KText(
                        text: '\$${item['price']}',
                        fontFamily: 'Cera Bold',
                        fontSize: 20,
                        color: HexColor('4E55AF'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 16,
                            initialRating: double.parse('${item['rating']}'),
                            minRating: 1,
                            unratedColor: Colors.grey,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),

                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          KText(text: '[${item['rating']}]'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
