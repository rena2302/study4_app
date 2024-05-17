import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('Setting'),
        ),
      ),
    );
  }
}