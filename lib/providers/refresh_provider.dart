import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'refresh_provider.g.dart';
part 'refresh_provider.freezed.dart';

@freezed
sealed class RefreshActivity with _$RefreshActivity {
  factory RefreshActivity({
    required List<int> activity,
    required String type,
    required int participants,
    required double price,
  }) = _RefreshActivity;
}

@riverpod
Future<RefreshActivity> pullToRefresh(Ref ref) async {
  // 用定时器模拟future，延迟1秒后返回一个Activity对象
  await Future.delayed(const Duration(seconds: 1));
  // 有三分之一概率抛出异常
  if ((DateTime.now().millisecondsSinceEpoch % 3) == 0) {
    throw Exception('模拟错误：三分之一概率触发');
  }
  return RefreshActivity(
    activity: List.generate(
      10,
      (index) => (1 + (index + DateTime.now().millisecondsSinceEpoch) % 100),
    ),
    type: 'education',
    participants: 1,
    price: 0.0,
  );
}

// 使用注解方式实现
@riverpod
class ManualRefresh extends _$ManualRefresh {
  @override
  Future<RefreshActivity> build() async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 1));
    // 有三分之一概率抛出异常
    if ((DateTime.now().millisecondsSinceEpoch % 3) == 0) {
      throw Exception('模拟错误：三分之一概率触发');
    }
    return RefreshActivity(
      activity: List.generate(
        10,
        (index) => (1 + (index + DateTime.now().millisecondsSinceEpoch) % 100),
      ),
      type: 'education',
      participants: 1,
      price: 0.0,
    );
  }
}
