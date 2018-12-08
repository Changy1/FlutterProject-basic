import 'package:flutter/material.dart';

class HomeListWidget extends StatelessWidget {
  Widget _itemBuilder ( BuildContext costext, int index) {
    return Text('ataadasf');
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: _itemBuilder,
    );
  }
}