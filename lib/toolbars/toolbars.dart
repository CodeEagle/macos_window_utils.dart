import 'dart:ui';

abstract class Toolbar {
  const Toolbar();

  String getName();

  Map<String, String> getArguments();
}

class DefaultToolbar extends Toolbar {
  const DefaultToolbar();

  @override
  String getName() {
    return "DefaultToolbar";
  }

  @override
  Map<String, String> getArguments() {
    return {};
  }
}

class BlockingToolbar extends Toolbar {
  final Color? blockingAreaDebugColor;

  const BlockingToolbar({this.blockingAreaDebugColor});

  @override
  String getName() {
    return "BlockingToolbar";
  }

  @override
  Map<String, String> getArguments() {
    return {
      "blockingAreaDebugColor": blockingAreaDebugColor == null
          ? ""
          : "${blockingAreaDebugColor!.red},${blockingAreaDebugColor!.green},${blockingAreaDebugColor!.blue},${blockingAreaDebugColor!.alpha}",
    };
  }
}
