import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/refresh_provider.dart';

class ManualRefreshPage extends ConsumerWidget {
  const ManualRefreshPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(manualRefreshProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('手动点击刷新')),

      body: activity.when(
        data: (value) => ListView.builder(
          physics: const ClampingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: value.activity.length,
          itemExtent: 40,
          itemBuilder: (context, index) => Center(
            child: Text(
              value.activity[index].toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => ListView(
          physics: const ClampingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [Center(child: Text('Error: $error'))],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.invalidate(manualRefreshProvider);
        },
        tooltip: '刷新',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
