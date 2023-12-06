import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _themeIndex = 0;
  final List<ThemeData> _themes = [
    ThemeData(primarySwatch: Colors.blue,scaffoldBackgroundColor: Colors.blue),
    ThemeData(primarySwatch: Colors.orange,scaffoldBackgroundColor: Colors.red),
    ThemeData(primarySwatch: Colors.pink,scaffoldBackgroundColor: Colors.green),
    ThemeData(primarySwatch: Colors.purple, scaffoldBackgroundColor: Colors.purple),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: _themes[_themeIndex],
        home: Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons',
          style: TextStyle(color: Colors.white),
        ),
       // backgroundColor: Color(0xFF4E342E),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
                title: Text('Blue Theme'),
                value: 0,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange),
            RadioListTile(
                title: Text('Orange Theme'),
                value:1,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange
            ),
            RadioListTile(
               title: Text('Green Theme'),
               value: 2,
               groupValue: _themeIndex,
               onChanged: _handleThemeChange
            ),
            RadioListTile(
               title: Text('Purple Theme'),
               value: 3,
               groupValue: _themeIndex,
               onChanged: _handleThemeChange
            ),
          ],
        ),
      ),
    ),
    );
  }

  void _handleThemeChange(int? value) {
    setState(() {
      _themeIndex = value!;
    });
  }
}
