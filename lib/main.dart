// import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_github/env/mock_data.dart';
import 'package:flutter_github/env/env_config.dart';

void main() {
  // runApp(MyApp());
  Data data = Data.fromJson(json.decode(JsonString.mockdata));
  print(data.toJson());
}
