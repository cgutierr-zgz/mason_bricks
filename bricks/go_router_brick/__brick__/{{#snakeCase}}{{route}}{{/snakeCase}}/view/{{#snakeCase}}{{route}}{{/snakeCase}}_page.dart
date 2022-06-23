import 'package:flutter/material.dart';

class {{#pascalCase}}{{route}}{{/pascalCase}}Page extends StatelessWidget {
  const {{#pascalCase}}{{route}}{{/pascalCase}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('{{#pascalCase}}{{route}}{{/pascalCase}}Page'),
    );
  }
}