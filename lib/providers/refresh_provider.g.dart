// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pullToRefreshHash() => r'15d11b6cd14a71e1636a3367f925d315573e452d';

/// See also [pullToRefresh].
@ProviderFor(pullToRefresh)
final pullToRefreshProvider =
    AutoDisposeFutureProvider<RefreshActivity>.internal(
      pullToRefresh,
      name: r'pullToRefreshProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$pullToRefreshHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PullToRefreshRef = AutoDisposeFutureProviderRef<RefreshActivity>;
String _$manualRefreshHash() => r'd253320a3effe016bb5f4fc85303f25e5c675241';

/// See also [ManualRefresh].
@ProviderFor(ManualRefresh)
final manualRefreshProvider =
    AutoDisposeAsyncNotifierProvider<ManualRefresh, RefreshActivity>.internal(
      ManualRefresh.new,
      name: r'manualRefreshProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$manualRefreshHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ManualRefresh = AutoDisposeAsyncNotifier<RefreshActivity>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
