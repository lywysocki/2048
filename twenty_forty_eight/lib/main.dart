import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '2048.dart';

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      title: '2048',
      home: TwentyFortyEight(),
    ),
  ));
}
