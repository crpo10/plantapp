import 'package:flutter/material.dart';
import 'package:plantapp/src/widgets/custom_appbar.dart';
import 'package:plantapp/src/widgets/products_list_widget.dart';
import 'package:plantapp/src/widgets/related_products.dart';
import 'package:plantapp/src/widgets/type_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            sortButton: () {},
            searchButton: () {},
            shoppingCartButton: () {},
          ),
          _homeTitle(height, text: 'Planty'),
          Flexible(
            fit: FlexFit.loose,
            child: TypeWidget(),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: ProductsList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              'Outdoor',
              style: TextStyle(
                fontSize: height * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: RelatedProducts(),
          ),
        ],
      ),
    );
  }

  _homeTitle(height, {String? text}) {
    return Container(
      margin: EdgeInsets.only(left: 30, bottom: 20),
      child: Text(
        text!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: height * 0.045,
        ),
      ),
    );
  }
}
