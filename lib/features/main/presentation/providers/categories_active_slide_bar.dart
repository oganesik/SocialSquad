import 'package:flutter_riverpod/flutter_riverpod.dart';

final active = StateNotifierProvider<Action, int>((ref) => Action(ref));

class Action extends StateNotifier<int> {
  Action(this.ref) : super(0);
  final Ref ref;

  void useAction(int a) {
    state = a;
  }
}
