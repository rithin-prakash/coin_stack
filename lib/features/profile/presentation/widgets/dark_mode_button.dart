import 'package:flutter/material.dart';

class DarkModeButton extends StatelessWidget {
  const DarkModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.black45,
        child: Icon(Icons.dark_mode, color: Colors.black, size: 30),
      ),
      title: Text('Dark Mode'),
      trailing: Switch.adaptive(value: false, onChanged: (v) {}),
    );
  }
}
