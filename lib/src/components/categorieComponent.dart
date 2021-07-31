import 'package:ecommerce_app_project/src/controllers/shopController.dart';
import 'package:ecommerce_app_project/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CategorieComponet extends StatelessWidget {
  final _shopC = Get.put(ShopController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7, right: 7),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 7,
                ),
                child: KText(
                  text: 'Our Product',
                  fontFamily: 'Cera Bold',
                  fontSize: 27,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              KText(
                text: 'Short by',
                color: HexColor('B9BAC7'),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: HexColor('B9BAC7'),
              ),
              SizedBox(
                width: 12,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(12),
            height: 75,
            width: Get.width,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: _shopC.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = _shopC.categories[index];
                  return Container(
                    width: 140,
                    decoration: BoxDecoration(
                        color: HexColor('${item['color']}'),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            '${item['imagePath']}',
                            width: 30,
                            height: 35,
                          ),
                        ),

                        // Expanded(
                        //   flex: 2,
                        //   child: KText(
                        //     text: '${item['title']}',
                        //     fontSize: 15,
                        //     // color: HexColor('${item['color']}'),
                        //     fontFamily: 'Cera Bold',
                        //     maxLines: 1,
                        //   ),
                        // ),

                        Expanded(
                          flex: 2,
                          child: KText(
                            text: '${item['title']}',
                            fontSize: 15,
                            // color: HexColor('${item['color']}'),
                            fontFamily: 'Cera Bold',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
