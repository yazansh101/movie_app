import 'dart:ui';

extension NumExtension on num {
  double get h {
    final dispatcher = PlatformDispatcher.instance.views.first;
    final physicalHeight = dispatcher.physicalSize.height;
    final topPadding = dispatcher.padding.top;
    final deviceRatio = dispatcher.devicePixelRatio;
    return ((physicalHeight - topPadding) / deviceRatio) * (this / 100);
  }

  double get w {
    final dispatcher = PlatformDispatcher.instance.views.first;
    final physicalWidth = dispatcher.physicalSize.width;
    final deviceRatio = dispatcher.devicePixelRatio;
    return (physicalWidth / deviceRatio) * (this / 100);
  }
}
