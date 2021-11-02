import 'package:flutter/material.dart';
import 'package:plantapp/src/data/static_plants_data.dart';
import 'package:plantapp/src/utils/main_colors.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: plants.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: _ProductItem(
              i: i,
            ),
          );
        },
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  const _ProductItem({
    Key? key,
    this.i,
  }) : super(key: key);

  final int? i;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: MainColors.green,
              radius: 40,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image(
                height: 80,
                width: 80,
                fit: BoxFit.contain,
                image: AssetImage(
                  plants[i!].image,
                ),
              ),
            ),
          ],
        ),
        Text(
          plants[i!].name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Outdoor',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
