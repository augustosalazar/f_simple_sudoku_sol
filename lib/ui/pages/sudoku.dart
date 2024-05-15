import 'package:flutter/material.dart';

class Sudoku extends StatelessWidget {
  const Sudoku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Sudoku for kids'),
          actions: [
            IconButton(icon: const Icon(Icons.settings), onPressed: () {})
          ],
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Board(),
                Options(),
              ],
            ),
          ),
        ));
  }
}

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        flex: 3,
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(child: Bloque()),
                Expanded(child: Bloque()),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(child: Bloque()),
                Expanded(child: Bloque()),
              ],
            ))
          ],
        ));
  }
}

class Bloque extends StatelessWidget {
  const Bloque({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(2.0),
      child: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(flex: 2, child: Casilla(value: '1')),
              Expanded(
                  flex: 2,
                  child: Casilla(
                    value: '2',
                  )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(child: Casilla(value: '3')),
              Expanded(
                  child: Casilla(
                value: '4',
              )),
            ],
          )),
        ],
      ),
    );
  }
}

class Casilla extends StatelessWidget {
  const Casilla({super.key, required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.onSurface)),
        child: Center(child: Text(value)));
  }
}

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        flex: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Center(child: Text('1'))),
            Expanded(child: Center(child: Text('2'))),
            Expanded(child: Center(child: Text('3'))),
            Expanded(child: Center(child: Text('4'))),
          ],
        ));
  }
}
