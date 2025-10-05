// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Categories)
const categoriesProvider = CategoriesProvider._();

final class CategoriesProvider
    extends $NotifierProvider<Categories, List<Category>> {
  const CategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoriesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoriesHash();

  @$internal
  @override
  Categories create() => Categories();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Category> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Category>>(value),
    );
  }
}

String _$categoriesHash() => r'135d946f528e023ea614bd51dea28d16398ec631';

abstract class _$Categories extends $Notifier<List<Category>> {
  List<Category> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Category>, List<Category>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Category>, List<Category>>,
              List<Category>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
