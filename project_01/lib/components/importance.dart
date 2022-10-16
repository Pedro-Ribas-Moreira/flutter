import 'package:flutter/material.dart';

class Importance extends StatelessWidget {
  final int importanceLevel;
  const Importance({
    required this.importanceLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,
            size: 15,
            color: (importanceLevel >= 1) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: (importanceLevel >= 2) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: (importanceLevel >= 3) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: (importanceLevel >= 4) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: (importanceLevel >= 5) ? Colors.blue : Colors.blue[100])
      ],
    );
  }
}
