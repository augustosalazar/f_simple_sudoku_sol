import 'package:flutter/material.dart';

class Sudoku extends StatelessWidget {
  const Sudoku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Sudoku for kids'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sudoku for kids',
              ),
            ],
          ),
        ));
  }
}
