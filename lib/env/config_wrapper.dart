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
  }
}
