// import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_github/env/config_wrapper.dart';
import 'package:flutter_github/env/dev.dart';
import 'package:flutter_github/env/env_config.dart';
import 'package:flutter_github/app.dart';

void main() {
  runApp(ConfigWrapper(
    child: FlutterReduxApp(),
    config: EnvConfig.fromJson(config),
  ));
}
