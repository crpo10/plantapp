import 'package:flutter/material.dart';
import 'package:plantapp/src/data/static_plants_data.dart';
import 'package:plantapp/src/utils/main_colors.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: 600,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20),
        shrinkWrap: true,
        itemCount: plants.length,
        itemBuilder: (_, i) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: MainColors.green,
            ),
            margin: EdgeInsets.all(20),
            width: width * 0.5,
            child: Stack(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                productImage(height, i),
                Positioned(
                  bottom: 30,
                  child: productInfo(height, i),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: addButton(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  addButton() {
    return GestureDetector(
      onTap: () {
        print('hola');
      },
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  productImage(double height, int i) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 80,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 40,
                ),
              ],
            ),
          ),
        ),
        Image(
          width: double.infinity,
          height: height * 0.2,
          image: AssetImage(plants[i].image),
        ),
      ],
    );
  }

  productInfo(double height, int i) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Indoor',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            plants[i].name,
            style: TextStyle(
              fontSize: height * 0.02,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            '\$${plants[i].price}',
            style: TextStyle(
              fontSize: height * 0.02,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
