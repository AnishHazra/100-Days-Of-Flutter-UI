import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/theme_changer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Mode"),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
            value: ThemeMode.light,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("Dark Mode"),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
            value: ThemeMode.dark,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("Defult System"),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
            value: ThemeMode.system,
          ),
        ],
      ),
    );
  }
}
