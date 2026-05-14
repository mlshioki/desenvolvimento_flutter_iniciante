import 'package:flutter/material.dart';

// - STATEFUL WIDGET
class AStatefulWidget extends StatefulWidget {
  const AStatefulWidget({super.key});

  @override
  State<AStatefulWidget> createState() => _AStatefulWidgetState();
}

class _AStatefulWidgetState extends State<AStatefulWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is a stateful widget',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,              
              color: Colors.redAccent,
            ),),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicked $count times',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen,
            ),),
          ],
        ),
        SizedBox(height: 4),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          }, 
          child: Text('Add to count')),
        StatefulWidgetForStatelessWidget(callback: () {
          setState(() {
            count++;
          });
        }),
      ],
    );
  }
}


// - STATEFUL WIDGET FOR STATELESS WIDGET
class StatefulWidgetForStatelessWidget extends StatefulWidget {
  final void Function() callback;
  const StatefulWidgetForStatelessWidget({super.key, required this.callback});

  @override
  State<StatefulWidgetForStatelessWidget> createState() => _StatefulWidgetForStatelessWidgetState();
}

class _StatefulWidgetForStatelessWidgetState extends State<StatefulWidgetForStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {
          widget.callback();
        }, 
        child: Text('Add to count from another stateful widget'))
      ],
    );
  }
}