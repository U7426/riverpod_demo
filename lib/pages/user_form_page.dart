import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/user_form_provider.dart';

class UserFormPage extends ConsumerWidget {
  const UserFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('用户表单 (NotifierProvider)'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _FormSection(),
              const SizedBox(height: 24),
              _ValidationSection(),
              const SizedBox(height: 24),
              _UserInfoSection(),
              const SizedBox(height: 24),
              _ControlSection(),
              const SizedBox(height: 34),
            ],
          ),
        ),
      ),
    );
  }
}

// 表单输入区域组件
class _FormSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '📝 用户信息表单',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // 姓名输入框
            _NameTextField(),

            const SizedBox(height: 16),

            // 性别选择
            _GenderSelector(),

            const SizedBox(height: 16),

            // 年龄输入框
            _AgeTextField(),
          ],
        ),
      ),
    );
  }
}

// 验证状态区域组件
class _ValidationSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final validationStatus = ref.watch(formValidationStatusProvider);

    return Card(
      elevation: 2,
      color: validationStatus.contains('✅') ? Colors.green[50] : Colors.red[50],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '🔍 表单验证',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              validationStatus,
              style: TextStyle(
                color: validationStatus.contains('✅')
                    ? Colors.green
                    : Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 用户信息展示区域组件
class _UserInfoSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(userInfoDisplayProvider);

    return Card(
      elevation: 2,
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '👤 用户信息预览',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              userInfo,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 控制按钮区域组件
class _ControlSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '🎮 操作面板',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildControlButton(
                '重置表单',
                Colors.red,
                () => ref.read(userFormNotifierProvider.notifier).resetForm(),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildControlButton(
                '提交表单',
                Colors.green,
                () => _showSubmitDialog(ref),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildControlButton(String text, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      child: Text(text),
    );
  }

  void _showSubmitDialog(WidgetRef ref) {
    final isValid = ref.read(userFormNotifierProvider.notifier).isValid;
    final summary = ref.read(userFormNotifierProvider.notifier).formSummary;

    showDialog(
      context: ref.context,
      builder: (context) => AlertDialog(
        title: Text(isValid ? '确认提交' : '表单不完整'),
        content: Text(isValid ? summary : '请先完成所有必填项'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          if (isValid)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showSuccessMessage(ref.context);
              },
              child: const Text('确认提交'),
            ),
        ],
      ),
    );
  }

  void _showSuccessMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('✅ 表单提交成功！'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
      ),
    );
  }
}

// 姓名输入框组件
class _NameTextField extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '姓名',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: '请输入您的姓名',
            prefixIcon: const Icon(Icons.person),
            border: const OutlineInputBorder(),
            filled: true,
            fillColor: Colors.grey[50],
          ),
          onChanged: (value) {
            ref.read(userFormNotifierProvider.notifier).updateName(value);
          },
        ),
      ],
    );
  }
}

// 性别选择器组件
class _GenderSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentGender = ref.watch(userFormNotifierProvider).gender;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '性别',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: _buildGenderButton(
                ref,
                Gender.male,
                currentGender == Gender.male,
                Colors.blue,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildGenderButton(
                ref,
                Gender.female,
                currentGender == Gender.female,
                Colors.pink,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildGenderButton(
                ref,
                Gender.other,
                currentGender == Gender.other,
                Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGenderButton(
    WidgetRef ref,
    Gender gender,
    bool isSelected,
    Color color,
  ) {
    return GestureDetector(
      onTap: () {
        ref.read(userFormNotifierProvider.notifier).updateGender(gender);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? color : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? color : Colors.grey[300]!,
            width: 2,
          ),
        ),
        child: Text(
          gender.displayName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

// 年龄输入框组件
class _AgeTextField extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '年龄',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: '请输入您的年龄',
            prefixIcon: const Icon(Icons.cake),
            border: const OutlineInputBorder(),
            filled: true,
            fillColor: Colors.grey[50],
          ),
          onChanged: (value) {
            final ageValue = int.tryParse(value) ?? 0;
            ref.read(userFormNotifierProvider.notifier).updateAge(ageValue);
          },
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
