// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_icon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedIcon)
const selectedIconProvider = SelectedIconProvider._();

final class SelectedIconProvider
    extends $NotifierProvider<SelectedIcon, SelectedIconData?> {
  const SelectedIconProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedIconProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedIconHash();

  @$internal
  @override
  SelectedIcon create() => SelectedIcon();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SelectedIconData? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SelectedIconData?>(value),
    );
  }
}

String _$selectedIconHash() => r'8cc507b7b30c2e574e56d719d84283182e8644b2';

abstract class _$SelectedIcon extends $Notifier<SelectedIconData?> {
  SelectedIconData? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SelectedIconData?, SelectedIconData?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SelectedIconData?, SelectedIconData?>,
              SelectedIconData?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
