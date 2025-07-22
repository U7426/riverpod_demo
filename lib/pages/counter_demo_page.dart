import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 计数器Provider（自动释放）
final counterProvider = StateProvider.autoDispose<int>((ref) => 0);

// final counterProvider = StateProvider<int>((ref) => 0);

/// 计数器页面
class CounterDemoPage extends ConsumerWidget {
  const CounterDemoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod 计数器')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('你已经点击了按钮这么多次：'),
            Text('$count', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).state++,
              child: const Text('增加'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).state = 0,
              child: const Text('重置'),
            ),
          ],
        ),
      ),
    );
  }
}
