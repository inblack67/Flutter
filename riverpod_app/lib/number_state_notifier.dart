import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumbersNotifier extends StateNotifier<List<int>> {
  NumbersNotifier() : super([]);
  void add(int number) {
    state = [...state, number];
  }

  void delete(int number) {
    var newState = state.where((element) => element != number);
    state = [...newState];
  }
}
