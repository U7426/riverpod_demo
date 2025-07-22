import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/refresh_provider.dart';

class PullToRefreshPage extends ConsumerWidget {
  const PullToRefreshPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(pullToRefreshProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('下拉刷新')),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(pullToRefreshProvider.future),
        child: activity.when(
          data: (data) => ListView.builder(
            physics: const ClampingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            itemCount: data.activity.length,
            itemExtent: 40,
            itemBuilder: (context, index) => Center(
              child: Text(
                data.activity[index].toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          error: (error, stackTrace) => ListView(
            physics: const ClampingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [Center(child: Text('Error: $error'))],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
