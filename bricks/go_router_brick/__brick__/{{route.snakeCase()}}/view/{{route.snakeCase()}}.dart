import 'package:flutter/material.dart';

class {{route.pascalCase()}}Page extends StatelessWidget {
  const {{route.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('{{route.pascalCase()}}Page'),
    );
  }
}