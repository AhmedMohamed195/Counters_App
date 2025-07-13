import 'package:flutter/material.dart';

class CustomTeams extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? onPressed1;
  final void Function()? onPressed2;
  final void Function()? onPressed3;

  const CustomTeams({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed1,
    required this.onPressed2,
    required this.onPressed3,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(text1, style: TextStyle(fontSize: screenWidth * 0.11)),
        Text(text2, style: TextStyle(fontSize: screenWidth * 0.38)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(screenWidth * 0.015),
            backgroundColor: Colors.orange,
            minimumSize: Size(screenWidth * 0.35, screenHeight * 0.06),
          ),
          onPressed: onPressed1,
          child: Text(
            'Add 1 Point ',
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              color: Colors.black,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: Size(screenWidth * 0.35, screenHeight * 0.06),
          ),
          onPressed: onPressed2,
          child: Text(
            'Add 2 Point',
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              color: Colors.black,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: Size(screenWidth * 0.35, screenHeight * 0.06),
          ),
          onPressed: onPressed3,
          child: Text(
            'Add 3 Point ',
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
