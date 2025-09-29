import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_icon_provider.g.dart';

@riverpod
class SelectedIcon extends _$SelectedIcon {
  @override
  Map<String, int>? build() => null;

  void changeSelection(int codePoint, String fontFamily) {
    final Map<String, int> entry = {fontFamily: codePoint};
    if (mapEquals(state, entry)) {
      state = null;
      return;
    }
    state = entry;
  }
}
