import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Check Box',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF4E342E),
      ),
      body: Center(
        child: Card(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Algorithms',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF4E342E),
                  )),
              Row(
                children: [
                  Text('Self-care is how you take your power Back'),
                  Checkbox(
                      checkColor: Color(0xFF4E342E),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                          print(" Checkbox is clicked ");
                        });
                      })
                ],
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
