import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 定义样式枚举
enum SegmentStyle { style1, style2, style3 }

// 创建 segment 样式选择器 provider
final segmentStyleProvider = StateProvider<SegmentStyle>(
  (ref) => SegmentStyle.style1,
);

class SegmentDemoPage extends ConsumerWidget {
  const SegmentDemoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStyle = ref.watch(segmentStyleProvider);
    Widget? body;
    switch (currentStyle) {
      case SegmentStyle.style1:
        body = SizedBox(
          height: 100,
          child: Center(child: Text(currentStyle.name)),
        );
      case SegmentStyle.style2:
        body = SizedBox(
          height: 200,
          child: Center(child: Text(currentStyle.name)),
        );
      case SegmentStyle.style3:
        body = SizedBox(
          height: 300,
          child: Center(child: Text(currentStyle.name)),
        );
    }

    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildSegmentControl(context),
          _buildHeader(),
          body,
          _buildBottom(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Segment 控件演示'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }

  Widget _buildHeader() {
    return Consumer(
      builder: (context, ref, _) {
        final currentStyle = ref.watch(segmentStyleProvider);
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '当前样式: ${_getStyleName(currentStyle)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Header 区域 - 这里显示页面标题和描述信息',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSegmentControl(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: _buildSimpleSegmentControl(context),
    );
  }

  Widget _buildBottom() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: const Column(
        children: [
          Text('Bottom 区域', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('这里可以放置操作按钮、状态信息等', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  //  segment 控件
  Widget _buildSimpleSegmentControl(BuildContext context) {
    return Row(
      children: [
        _buildSimpleButton(context, SegmentStyle.style1, '卡片'),
        const SizedBox(width: 8),
        _buildSimpleButton(context, SegmentStyle.style2, '网格'),
        const SizedBox(width: 8),
        _buildSimpleButton(context, SegmentStyle.style3, '时间线'),
      ],
    );
  }

  // 按钮
  Widget _buildSimpleButton(
    BuildContext context,
    SegmentStyle style,
    String label,
  ) {
    return Consumer(
      builder: (context, ref, _) {
        final currentStyle = ref.watch(segmentStyleProvider);
        final isSelected = currentStyle == style;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              ref.read(segmentStyleProvider.notifier).state = style;
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black87,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String _getStyleName(SegmentStyle style) {
    switch (style) {
      case SegmentStyle.style1:
        return '卡片式布局';
      case SegmentStyle.style2:
        return '网格布局';
      case SegmentStyle.style3:
        return '时间线布局';
    }
  }
}
