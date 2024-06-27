import 'package:flutter/material.dart';
import 'package:khedma_attendence/home.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
