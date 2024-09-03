// ignore_for_file: must_be_immutable

import 'package:athr_app/constants.dart';
import 'package:athr_app/models/product_model.dart';
import 'package:flutter/material.dart';

class CustomProduct extends StatefulWidget {
  final ProductModel item;

  CustomProduct({super.key, required this.item});

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
            width: MediaQuery.of(context).size.width / 2 - 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // image
                  Expanded(child: Center(child: Image.asset(widget.item.image))),
                  // title
                  Text(
                    maxLines: 2,
                    widget.item.title,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  // image greee
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Image.asset(
                      widget.item.brandImage,
                      // ,
                    ),
                  ),

                  // description
                  Text(
                    maxLines: 2,
                    widget.item.description,
                    style: TextStyle(fontSize: 10, color: Color(0xff878383)),
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // price

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      widget.item.price,
                      strutStyle: StrutStyle(),
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffCA7009),
                      ),
                    ),
                  ),
                  // Spacer(),
                  // buttton
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        size: 28,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Expanded(
                        child: GestureDetector(
                            child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(
                              color: Color.fromRGBO(29, 117, 177, 0.23),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                child: Text(
                                  'أضف للعربة',
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Color.fromRGBO(29, 117, 177, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Icon(
                                Icons.shopping_cart,
                                size: 20,
                                color: Color.fromRGBO(29, 117, 177, 1),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
