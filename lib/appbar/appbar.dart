import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
      ),
      body: Center(
        child: Text(
          'Text',
        ),
      ),
    );
  }
}
