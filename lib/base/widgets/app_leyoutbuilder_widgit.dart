import 'package:flutter/material.dart';

class AppLeyoutbuilderWidgit extends StatelessWidget {
  final int randomDevitor;
  final bool? isColor;
  final double width;
  const AppLeyoutbuilderWidgit(
      {super.key, required this.randomDevitor, this.width = 3, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constaints) {
      return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              (constaints.constrainWidth() / randomDevitor).floor(),
              (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.white
                              : Colors.blueGrey)))));
    });
  }
}
