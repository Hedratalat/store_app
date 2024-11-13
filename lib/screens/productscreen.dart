// مش عارق الصفحه دي تبع ايه في الاغلب ملهاش لازمه لو ملهاش لازمه ابقي امسحها
import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/prodects.dart';


class ProductScreen extends StatefulWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late Product currentProduct;

  @override
  void initState() {
    super.initState();
    currentProduct = widget.product;
  }

  void updateProduct(Product newProduct) {
    setState(() {
      currentProduct = newProduct;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentProduct.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              currentProduct.image,
              height: 200,
            ),
            SizedBox(height: 10),
            Text(
              currentProduct.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              currentProduct.subtitle,
              style: TextStyle(
                fontSize: 18,
                color: kTextColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              currentProduct.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Price: \$${currentProduct.pricee}',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
