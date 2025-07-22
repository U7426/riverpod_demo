import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/pages/manual_refresh_page.dart';
import 'package:riverpod_demo/pages/pull_to_refresh_page.dart';
import 'package:riverpod_demo/pages/segment_demo_page.dart';
import 'package:riverpod_demo/pages/watch_demo_page.dart';
import 'package:riverpod_demo/pages/user_form_page.dart';
import 'pages/counter_demo_page.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const DemoListPage(),
    );
  }
}

class DemoListPage extends StatelessWidget {
  const DemoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod 示例列表')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.book, color: Colors.white),
              ),
              title: const Text('Riverpod 官方文档'),
              subtitle: const Text('查看 Riverpod 最新文档与示例'),
              trailing: const Icon(Icons.open_in_new),
              onTap: () async {
                const url = 'https://riverpod.dev/';
                final uri = Uri.parse(url);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  if (!context.mounted) return;
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('无法打开链接')));
                }
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.exposure_plus_1, color: Colors.white),
              ),
              title: const Text('计数器（Riverpod）'),
              subtitle: const Text('使用 Riverpod 实现的基础计数器功能'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CounterDemoPage()),
                );
              },
            ),
          ),

          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.refresh, color: Colors.white),
              ),
              title: const Text('手动点击刷新（Riverpod）'),
              subtitle: const Text(
                '使用 Riverpod 实现的手动点击刷新功能(你想要更细粒度地处理 AsyncValue 的状态和内容，使用AsyncNotifier。)',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ManualRefreshPage()),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.refresh, color: Colors.white),
              ),
              title: const Text('下拉刷新（Riverpod）'),
              subtitle: const Text('使用 Riverpod 实现的下拉刷新功能'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PullToRefreshPage()),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.view_column, color: Colors.white),
              ),
              title: const Text('Segment 控件演示'),
              subtitle: const Text('使用 Riverpod 实现的不同样式切换功能'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SegmentDemoPage()),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.visibility, color: Colors.white),
              ),
              title: const Text('Provider Watch 演示'),
              subtitle: const Text('展示顶层provider和子provider之间的相互watch关系'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const WatchDemoPage()),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.person_add, color: Colors.white),
              ),
              title: const Text('用户表单 (NotifierProvider)'),
              subtitle: const Text('使用注解生成的NotifierProvider管理表单状态'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const UserFormPage()),
                );
              },
            ),
          ),
          // 这里可以继续添加更多功能入口
        ],
      ),
    );
  }
}
