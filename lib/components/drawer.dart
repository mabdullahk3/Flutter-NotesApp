import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:notes_app/pages/notes_page.dart';
import 'package:notes_app/pages/settings_page.dart';

class CustomHiddenDrawer extends StatefulWidget {
  const CustomHiddenDrawer({super.key});

  @override
  State<CustomHiddenDrawer> createState() => _CustomHiddenDrawerState();
}

class _CustomHiddenDrawerState extends State<CustomHiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final baseTextStyle = GoogleFonts.dmSerifText(
      textStyle: TextStyle(
    color: Colors.grey.shade800,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  ));

  final selectedTextStyle = GoogleFonts.dmSerifText(
      textStyle: const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  ));

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Notes',
          baseStyle: baseTextStyle,
          selectedStyle: selectedTextStyle,
          colorLineSelected: Colors.black,
        ),
        const NotesPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: baseTextStyle,
          selectedStyle: selectedTextStyle,
          colorLineSelected: Colors.black,
        ),
        const SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Theme.of(context).colorScheme.background,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 60,
      withAutoTittleName: false,
      backgroundColorAppBar: Theme.of(context).colorScheme.background,
    );
  }
}
