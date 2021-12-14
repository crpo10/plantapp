import 'package:flutter/material.dart';
import 'package:plantapp/src/utils/change_status_light.dart';
import 'package:plantapp/src/utils/main_colors.dart';
import 'package:plantapp/src/widgets/bottom_navbar.dart';
import 'package:plantapp/src/widgets/custom_appbar.dart';
import 'package:plantapp/src/widgets/products_list_widget.dart';
import 'package:plantapp/src/widgets/related_products.dart';
import 'package:plantapp/src/widgets/type_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    changeStatusDark();

    return Scaffold(
      bottomNavigationBar: CustomBottonNavbar(),
      backgroundColor: MainColors.green,
      body: _topBody(height),
    );
  }

  _topBody(double height) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 20,
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
      ),
      height: height * 0.87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            sortButton: () {
              print(height);
            },
            searchButton: () {},
            shoppingCartButton: () {},
          ),
          _homeTitle(height, text: 'Planty'),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: TypeWidget(),
          ),
          Flexible(
            flex: (height > 900) ? 5 : 3,
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
            flex: 2,
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
