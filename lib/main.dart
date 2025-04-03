import 'package:flutter/material.dart';
import 'package:simple_kanban/services/router/router.dart';
import 'package:simple_kanban/utilities/themes/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(SimpleKanban());
}

class SimpleKanban extends StatelessWidget {
  SimpleKanban({super.key});

  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: ThemeMode.system,
          routerConfig: _router.config(),
        );
      },
    );
  }
}
