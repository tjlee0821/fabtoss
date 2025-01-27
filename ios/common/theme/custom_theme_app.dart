import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';
import 'package:flutter/material.dart';

import 'custom_theme_holder.dart';
import 'theme_util.dart';

class CustomThemeApp extends StatefulWidget {
  final Widget child;

  const CustomThemeApp({Key? key, required this.child}) : super(key: key);

  @override
  State<CustomThemeApp> createState() => _CustomThemeAppState();
}

class _CustomThemeAppState extends State<CustomThemeApp> {
  late CustomTheme theme = savedTheme ?? defaultTheme ?? systemTheme;
  final CustomTheme? defaultTheme = CustomTheme
      .dark; //light, dark 테마가 준비되었고, 시스템 테마를 따라가게 하려면 해당 필드를 제거 하시면 됩니다.

  void handleChangeTheme(CustomTheme theme) {
    setState(() => this.theme = theme);
  }

  @override
  Widget build(BuildContext context) {
    return CustomThemeHolder(
      changeTheme: handleChangeTheme,
      theme: theme,
      child: widget.child,
    );
  }

  CustomTheme? get savedTheme => Prefs.appTheme.get();

  CustomTheme get systemTheme {
    switch (ThemeUtil.systemBrightness) {
      case Brightness.dark:
        return CustomTheme.dark;
      case Brightness.light:
        return CustomTheme.light;
    }
  }
}
