import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "Parabéns!",
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
