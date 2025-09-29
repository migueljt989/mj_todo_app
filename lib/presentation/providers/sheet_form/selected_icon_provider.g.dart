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
    extends $NotifierProvider<SelectedIcon, Map<String, int>?> {
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
  Override overrideWithValue(Map<String, int>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, int>?>(value),
    );
  }
}

String _$selectedIconHash() => r'c07f67c2ceb2d8bf6e96ef969dcbed856f3f6293';

abstract class _$SelectedIcon extends $Notifier<Map<String, int>?> {
  Map<String, int>? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Map<String, int>?, Map<String, int>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, int>?, Map<String, int>?>,
              Map<String, int>?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
