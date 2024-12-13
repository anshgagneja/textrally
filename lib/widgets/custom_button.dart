import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback
      onTap; //A type alias in Flutter that represents a function that returns void and takes no arguments.
  final bool isHome;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isHome=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        minimumSize: Size(
          !isHome ? width : width / 5,
          50,
        ), // Set button color to blue
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
