import 'package:flutter/material.dart';
class reusablecard extends StatelessWidget {
  const reusablecard({required this.colour, this.cardchild, this.onPress});
  final Color colour;
  final Widget? cardchild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
        height: 200,
        width: 170,
      ),
    );
  }
}