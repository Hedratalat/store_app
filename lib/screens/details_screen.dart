import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/prodects.dart';
import 'package:store_app/widget/details/deatails_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: deatailsAppBar(context),
      body: DeatailsBody(
        product: product,
      ),
    );
  }

  AppBar deatailsAppBar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child: IconButton(
          icon: Icon(Icons.arrow_back,
          color: kPrimaryColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
