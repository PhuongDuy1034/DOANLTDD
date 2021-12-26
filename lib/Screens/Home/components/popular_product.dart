import 'package:doanltdd/Screens/Home/components/setion_tittle.dart';
import 'package:doanltdd/components/product_cart.dart';
import 'package:doanltdd/models/Prooduct.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
    this.title1,
  }) : super(key: key);
  final String title1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: SectionTitle(title: title1, press: () {}),
        ),
        SizedBox(height: (20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: (20)),
            ],
          ),
        )
      ],
    );
  }
}
