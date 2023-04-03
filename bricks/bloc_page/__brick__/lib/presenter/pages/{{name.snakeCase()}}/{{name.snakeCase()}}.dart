import 'package:flutter/material.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{name.titleCase()}} Page'),
      ),
      body: const Center(
        child: Text('{{name.titleCase()}} Page'),
      ),
    );
  }
}
