import 'package:coin_stack/features/profile/presentation/bloc/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DarkModeButton extends StatelessWidget {
  const DarkModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      builder: (_, s) {
        return ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.black45,
            child: Icon(Icons.dark_mode, color: Colors.black, size: 30),
          ),
          title: Text('Dark Mode'),
          trailing: Switch.adaptive(
            value: !s,
            onChanged: (v) {
              context.read<ThemeBloc>().changeTheme(!v);
            },
          ),
        );
      },
    );
  }
}
