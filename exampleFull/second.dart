import 'dart:async';

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int _counter = 0;
  late StreamController<int> _streamController;

  @override
  void initState() {
    _streamController = StreamController<int>();
    _streamController.stream.listen((data) {
      setState(() {
        _counter = data;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //
                  _streamController.sink.add(++_counter);
                },
                child: Text("Plus Plus")),
            Text("You have pushed : "),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
