import 'package:flutter/material.dart';
import 'package:mj_todo_app/domain/entities/selected_icon_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_icon_provider.g.dart';

@riverpod
class SelectedIcon extends _$SelectedIcon {
  @override
  SelectedIconData? build() => SelectedIconData(
    codePoint: Icons.list.codePoint,
    fontFamily: Icons.list.fontFamily,
  );

  void changeSelection(SelectedIconData iconInformation) {
    if (state?.codePoint == iconInformation.codePoint) {
      state = null;
      return;
    }
    state = iconInformation;
  }
}
