import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final numberProvider = Provider<int>((ref) {
  // ref gives access to other providers
  return 43;
});

final numberStateProvider = StateProvider<int>((ref) {
  return 30;
});

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  void increment(BuildContext context) {
    context.read(numberStateProvider).state++;
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final number = watch(numberProvider);
    final numberState = watch(numberStateProvider).state;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('number => $number'),
            Text('number state => $numberState'),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () => increment(context),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
