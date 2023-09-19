import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BaseStateManager<S> extends StateNotifier<S> {
  BaseStateManager(super.state);
}
