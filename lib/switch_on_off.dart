import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchOnAndOff extends StatefulWidget {
  const SwitchOnAndOff({super.key});

  @override
  State<SwitchOnAndOff> createState() => _SwitchOnAndOffState();
}

class _SwitchOnAndOffState extends State<SwitchOnAndOff> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Switch On And Off',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF4E342E),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterSwitch(
                value: status,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                toggleColor: Colors.black12,
                switchBorder: Border.all(
                  color: Colors.black,
                  width: 6.0,
                ),
                toggleBorder: Border.all(
                  color: Colors.white,
                  width: 5.0,
                ),
                activeColor: Colors.brown,
                inactiveColor: Colors.black38,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlutterSwitch(
                width: 130.0,
                height: 55.0,
                valueFontSize: 15.0,
                activeText: "I am Active",
                inactiveText: "I am Inactive",
                value: status,
                borderRadius: 30.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                activeToggleColor: Colors.brown,
                inactiveToggleColor: Colors.black,
                activeSwitchBorder: Border.all(
                  color: Colors.brown,
                  width: 6.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Colors.black,
                  width: 6.0,
                ),
                activeColor: Colors.deepPurpleAccent,
                inactiveColor: Colors.white,
                activeIcon: Icon(
                  Icons.nightlight_round,
                  color: Colors.white,
                ),
                inactiveIcon: Icon(
                  Icons.wb_cloudy,
                  color: Color(0xFFFFDF5D),
                ),
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlutterSwitch(
                width: 200.0,
                height: 100.0,
                toggleSize: 50.0,
                value: status,
                borderRadius: 30.0,
                padding: 2.0,
                activeToggleColor: Colors.brown,
                inactiveToggleColor: Colors.black,
                activeSwitchBorder: Border.all(
                  color: Colors.brown,
                  width: 6.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Colors.black,
                  width: 6.0,
                ),
                activeColor: Colors.deepPurpleAccent,
                inactiveColor: Colors.white,
                activeIcon: Image.asset("on-logo.png"),
                inactiveIcon: Image.asset("off-logo.png"),
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
