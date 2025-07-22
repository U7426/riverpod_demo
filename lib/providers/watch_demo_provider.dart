import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'watch_demo_provider.freezed.dart';
part 'watch_demo_provider.g.dart';

// 使用freezed自动生成数据模型
@freezed
abstract class TopLevelData with _$TopLevelData {
  const factory TopLevelData({
    required String name,
    required int count,
    required bool isActive,
  }) = _TopLevelData;
}

// 使用riverpod_generator自动生成provider
@riverpod
class TopLevelNotifier extends _$TopLevelNotifier {
  @override
  TopLevelData build() {
    return const TopLevelData(name: '初始名称', count: 0, isActive: true);
  }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void incrementCount() {
    state = state.copyWith(count: state.count + 1);
  }

  void toggleActive() {
    state = state.copyWith(isActive: !state.isActive);
  }

  void reset() {
    state = const TopLevelData(name: '重置名称', count: 0, isActive: true);
  }
}

// 使用riverpod_generator自动生成监听器provider
@riverpod
Future<String> nameWatcher(Ref ref) async {
  // 只监听 name 和 isActive 字段，只有它们变化时才重新执行
  final tuple = ref.watch(
    topLevelNotifierProvider.select((data) => (data.name, data.isActive)),
  );
  await Future.delayed(const Duration(seconds: 1));
  final name = tuple.$1;
  final isActive = tuple.$2;
  // 根据 isActive 状态决定是否显示名称
  if (isActive) {
    return '✅ 活跃状态: $name';
  } else {
    return '❌ 非活跃状态: $name';
  }
}

@riverpod
String countWatcher(Ref ref) {
  final topLevel = ref.watch(topLevelNotifierProvider);

  // 根据 count 和 isActive 生成不同的消息
  if (!topLevel.isActive) {
    return '系统已暂停，当前计数: ${topLevel.count}';
  }

  if (topLevel.count == 0) {
    return '开始计数吧！当前计数: ${topLevel.count}';
  } else if (topLevel.count < 10) {
    return '计数进行中... 当前计数: ${topLevel.count}';
  } else {
    return '计数完成！最终计数: ${topLevel.count}';
  }
}

@riverpod
String combinedWatcher(Ref ref) {
  final nameStatus = ref.watch(nameWatcherProvider);
  final countStatus = ref.watch(countWatcherProvider);

  return '$nameStatus\n$countStatus';
}
