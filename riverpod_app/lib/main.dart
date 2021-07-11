import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final numberProvider = Provider<int>((ref) {
  // ref gives access to other providers
  return 43;
});

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final number = watch(numberProvider);
    return MaterialApp(
      home: Scaffold(
        body: Container(child: Text('number => $number')),
      ),
    );
  }
}
