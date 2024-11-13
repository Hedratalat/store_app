import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/prodects.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widget/home/producr_card.dart';


class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: getProducts.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: getProducts[index],
                    press: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: getProducts[index],
                            ),
                          ),
                      );
                      },

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




