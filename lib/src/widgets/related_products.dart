import 'package:flutter/material.dart';
import 'package:plantapp/src/data/static_plants_data.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: plants.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 10,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.green,
              ),
            ),
          );
        },
      ),
    );
  }
}
