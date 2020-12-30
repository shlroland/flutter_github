import 'package:flutter/material.dart';
import 'package:flutter_github/env/env_config.dart';
import 'package:flutter_github/common/config/config.dart';

class ConfigWrapper extends StatelessWidget {
  final Widget child;
  final EnvConfig config;

  ConfigWrapper({Key key, this.config, this.child});

  @override
  Widget build(BuildContext context) {
    Config.DEBUG = this.config.debug;
    print("ConfigWrapper build ${Config.DEBUG}");
    return _InheritedConfig(
      config: this.config,
      child: this.child,
    );
  }

  static EnvConfig of(BuildContext context) {
    final _InheritedConfig inheritedConfig =
        context.dependOnInheritedWidgetOfExactType<_InheritedConfig>();
    return inheritedConfig.config;
  }
}

class _InheritedConfig extends InheritedWidget {
  final EnvConfig config;
  const _InheritedConfig(
      {Key key, @required this.config, @required Widget child})
      : assert(child != null),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedConfig oldWidget) {
    return config != oldWidget.config;
  }
}
