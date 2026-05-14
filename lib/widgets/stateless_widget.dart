import 'package:flutter/material.dart';

// - STATELESS WIDGET
class AStatelessWidget extends StatelessWidget {
  const AStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is a stateless widget',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),),
          ],
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {}, 
          child: Text('Click me')
          ),
      ],
    );
  }
}
