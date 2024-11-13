import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/prodects.dart';
import 'package:store_app/widget/details/colorDot.dart';
import 'package:store_app/widget/details/prouduct_images.dart';

class DeatailsBody extends StatelessWidget {
  final Product product;
  const DeatailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: productImage(size: size, image:product.image,
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    colorDot(fillColor: kTextLightColor,
                    isSelected: true,),
                    colorDot(fillColor: Colors.blue,
                      isSelected: false,),
                    colorDot
                      (fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding /3),
                child: Text(product.title,
                style: TextStyle(
                  fontSize: 22.0,
                ),),
              ),
              Text('Price:\$${product.pricee}',
              style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.w600,
              color: kSecondaryColor),
              ),
              SizedBox(height: kDefaultPadding,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5 ,
          vertical: kDefaultPadding /2 ,),
          child: Text(product.description,
          style: TextStyle(color: Colors.white, fontSize: 18.0),),
        ),
      ],
    );
  }
}

