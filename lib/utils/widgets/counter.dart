import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (counter <= 1) {
              return;
            } else {
              counter--;
              setState(() {});
            }
          },
          child: Icon(Icons.remove, size: 30, color: ColorData.greyColor),
        ),
        SizedBox(width: 10),
        Container(
          padding: ConstsData.padding15,
          decoration: BoxDecoration(
            borderRadius: ConstsData.radius15,
            border: Border.all(width: 1, color: ColorData.greyColor),
          ),
          child: Center(
            child: Text(
              counter.toString(),
              style: StyleData.bigtxt.copyWith(fontSize: 20),
            ),
          ),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: () {
            if (counter >= 10) {
              return;
            } else {
              counter++;
              setState(() {});
            }
          },
          child: Icon(Icons.add, size: 30, color: ColorData.basicColor),
        ),
      ],
    );
  }
}
