import 'package:flutter/material.dart';

class StyledBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 200, // Adjust as needed
          height: 200, // Adjust as needed
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage( 'assets/imgs/IMG_0107.png'), // Your image path
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.blue, // Border color
              width: 2.0, // Border width
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // Shadow position
              ),
            ],
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Text(
            'Your Title Here', // Example text
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        // Add more widgets here for additional designs
      ],
    );
  }
}

