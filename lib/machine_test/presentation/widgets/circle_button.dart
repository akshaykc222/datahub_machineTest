import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String label;
  final Color color;
  final Function onPressed;
  final double? width;
  final double? height;

  const CircleButton(
      {super.key,
      required this.label,
      required this.color,
      required this.onPressed,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        width: width ?? _width * 0.5,
        height: height ?? _height * 0.2,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
