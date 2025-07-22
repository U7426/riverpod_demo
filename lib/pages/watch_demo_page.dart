import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/watch_demo_provider.dart';

class WatchDemoPage extends ConsumerWidget {
  const WatchDemoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Watch 演示 '),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopLevelSection(ref),
            const SizedBox(height: 24),
            _buildWatcherSection(ref),
            const SizedBox(height: 24),
            _buildCombinedSection(ref),
            const SizedBox(height: 24),
            _buildControlSection(ref),
          ],
        ),
      ),
    );
  }

  // 顶层数据展示区域
  Widget _buildTopLevelSection(WidgetRef ref) {
    final topLevelData = ref.watch(topLevelNotifierProvider);

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '📊 顶层数据 ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildDataRow('名称', topLevelData.name),
            _buildDataRow('计数', topLevelData.count.toString()),
            _buildDataRow('状态', topLevelData.isActive ? '活跃' : '暂停'),
          ],
        ),
      ),
    );
  }

  // 监听器展示区域
  Widget _buildWatcherSection(WidgetRef ref) {
    final nameStatus = ref.watch(nameWatcherProvider);
    final countStatus = ref.watch(countWatcherProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '👀 监听器状态 ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '名称监听器:',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                nameStatus.when(
                  data: (data) => Text(data, style: const TextStyle(color: Colors.blue)),
                  error: (error, stack) => Text(error.toString(), style: const TextStyle(color: Colors.red)),
                  loading: () => const Center(child: CircularProgressIndicator()),
                ),
                const SizedBox(height: 12),
                const Text(
                  '计数监听器:',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(countStatus, style: const TextStyle(color: Colors.green)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // 组合状态展示区域
  Widget _buildCombinedSection(WidgetRef ref) {
    final combinedStatus = ref.watch(combinedWatcherProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '🔄 组合状态 ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 2,
          color: Colors.orange[50],
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              combinedStatus,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.orange,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // 控制按钮区域
  Widget _buildControlSection(WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '🎮 控制面板 ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _buildControlButton(
              '更新名称',
              Colors.blue,
              () => _showNameDialog(ref),
            ),
            _buildControlButton(
              '增加计数',
              Colors.green,
              () =>
                  ref.read(topLevelNotifierProvider.notifier).incrementCount(),
            ),
            _buildControlButton(
              '切换状态',
              Colors.orange,
              () => ref.read(topLevelNotifierProvider.notifier).toggleActive(),
            ),
            _buildControlButton(
              '重置',
              Colors.red,
              () => ref.read(topLevelNotifierProvider.notifier).reset(),
            ),
          ],
        ),
      ],
    );
  }

  // 数据行组件
  Widget _buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  // 控制按钮组件
  Widget _buildControlButton(String text, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(text),
    );
  }

  // 显示名称输入对话框
  void _showNameDialog(WidgetRef ref) {
    final controller = TextEditingController();

    showDialog(
      context: ref.context,
      builder: (context) => AlertDialog(
        title: const Text('更新名称'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: '请输入新名称',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref
                    .read(topLevelNotifierProvider.notifier)
                    .updateName(controller.text);
                Navigator.of(context).pop();
              }
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }
}
