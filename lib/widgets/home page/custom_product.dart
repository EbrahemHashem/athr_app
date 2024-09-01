// ignore_for_file: must_be_immutable

import 'package:athr_app/constants.dart';
import 'package:flutter/material.dart';

class CustomProduct extends StatefulWidget {
  CustomProduct({super.key});
  // String image;
  // String text;
  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {},
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // image
                Center(child: Image.asset('assets/images/1.png')),
                // title
                Text(
                  maxLines: 2,
                  'مكيف كاسيت جري 1.5 حصان',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                // image greee
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset(
                    'assets/images/gree.png',
                  ),
                ),
                // description
                Text(
                  maxLines: 2,
                  'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما  ',
                  style: TextStyle(fontSize: 10, color: Color(0xff878383)),
                  textAlign: TextAlign.right,
                ),
                // price
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'ر.س 2750',
                    strutStyle: StrutStyle(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCA7009),
                    ),
                  ),
                ),
                // buttton
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 30,
                    ),
                    GestureDetector(
                        child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(
                          color: Color.fromRGBO(29, 117, 177, 0.23),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'أضف للعربة',
                            style: TextStyle(
                              color: Color.fromRGBO(29, 117, 177, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            size: 25,
                            color: Color.fromRGBO(29, 117, 177, 1),
                          ),
                        ],
                      ),
                    )),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
