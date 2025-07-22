import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_form_provider.freezed.dart';
part 'user_form_provider.g.dart';

// 性别枚举
enum Gender {
  male('男'),
  female('女'),
  other('其他');

  const Gender(this.displayName);
  final String displayName;

  @override
  String toString() => displayName;
}

// 使用freezed自动生成数据模型
@freezed
abstract class UserFormData with _$UserFormData {
  const factory UserFormData({
    required String name,
    required Gender gender,
    required int age,
  }) = _UserFormData;
}

// 使用riverpod_generator自动生成NotifierProvider
@riverpod
class UserFormNotifier extends _$UserFormNotifier {
  @override
  UserFormData build() {
    return const UserFormData(name: '', gender: Gender.male, age: 0);
  }

  // 更新姓名
  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  // 更新性别
  void updateGender(Gender gender) {
    state = state.copyWith(gender: gender);
  }

  // 更新年龄
  void updateAge(int age) {
    state = state.copyWith(age: age);
  }

  // 重置表单
  void resetForm() {
    state = const UserFormData(name: '', gender: Gender.male, age: 0);
  }

  // 验证表单
  bool get isValid {
    return state.name.isNotEmpty && state.age > 0;
  }

  // 获取表单摘要
  String get formSummary {
    if (!isValid) {
      return '请填写完整的用户信息';
    }
    return '姓名: ${state.name}, 性别: ${state.gender}, 年龄: ${state.age}岁';
  }
}

// 表单验证状态provider
@riverpod
String formValidationStatus(Ref ref) {
  final userForm = ref.watch(userFormNotifierProvider);

  final errors = <String>[];

  if (userForm.name.isEmpty) {
    errors.add('姓名不能为空');
  }

  if (userForm.age <= 0) {
    errors.add('年龄必须大于0');
  }

  if (errors.isEmpty) {
    return '✅ 表单验证通过';
  } else {
    return '❌ 验证错误:\n${errors.join('\n')}';
  }
}

// 用户信息展示provider
@riverpod
String userInfoDisplay(Ref ref) {
  final userForm = ref.watch(userFormNotifierProvider);
  final isValid = ref.watch(userFormNotifierProvider.notifier).isValid;

  if (!isValid) {
    return '请先填写完整的用户信息';
  }

  return '''
👤 用户信息
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
姓名: ${userForm.name}
性别: ${userForm.gender}
年龄: ${userForm.age}岁
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
''';
}
