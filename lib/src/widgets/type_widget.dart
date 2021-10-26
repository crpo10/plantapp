import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/src/data/static_types_data.dart';

class TypeWidget extends StatefulWidget {
  @override
  State<TypeWidget> createState() => _TypeWidgetState();
}

class _TypeWidgetState extends State<TypeWidget> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: 30,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 14, bottom: 0),
        scrollDirection: Axis.horizontal,
        itemCount: types.length,
        shrinkWrap: true,
        itemBuilder: (_, i) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = i;
                });
              },
              child: Text(
                types[i].name,
                style: TextStyle(
                  color: this.isSelected == i ? Colors.black : Colors.grey,
                  fontSize: height * 0.02,
                  fontWeight: this.isSelected == i
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
