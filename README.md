## Riverpod Demo 示例说明

本项目基于 Flutter + Riverpod，包含以下功能页面：

### 页面与功能
- **手动点击刷新（ManualRefreshPage）**
  - 文件：`lib/pages/manual_refresh_page.dart`
  - Provider：`manualRefreshProvider`
  - 功能：点击右下角按钮手动刷新数据。

- **下拉刷新（PullToRefreshPage）**
  - 文件：`lib/pages/pull_to_refresh_page.dart`
  - Provider：`pullToRefreshProvider`
  - 功能：下拉列表自动刷新数据。

- **计数器（CounterDemoPage）**
  - 文件：`lib/pages/counter_demo_page.dart`
  - Provider：`counterProvider`
  - ⚠️ 注意 自动释放和不自动释放的区别
  - 功能：基础计数器演示。

- **Segment 控件演示（SegmentDemoPage）**
  - 文件：`lib/pages/segment_demo_page.dart`
  - Provider：`segmentStyleProvider`
  - ⚠️ 注意 使用 StateProvider 管理 segment 样式状态
  - 功能：包含 Header、Body、Bottom 三个区域，通过 segment 控件切换 Body 的不同样式（卡片式、网格式、时间线式）。

### Provider 说明
- `manualRefreshProvider`：用于手动点击刷新页面的数据获取。
- `pullToRefreshProvider`：用于下拉刷新页面的数据获取。
- `segmentStyleProvider`：用于管理 segment 控件的样式状态切换。


### 代码生成
如需修改 Provider 或数据模型，需重新生成相关代码：

- 手动构建：
  ```sh
  dart run build_runner build --delete-conflicting-outputs
  ```
- 自动监听：
  ```sh
  dart run build_runner watch --delete-conflicting-outputs
  ```



