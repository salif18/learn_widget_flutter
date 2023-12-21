import "package:flutter/material.dart";

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool switchValue = true;

  void changeSwitch(value) {
    setState(() => switchValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switchValue,
      activeColor: Colors.white,
      activeTrackColor: Colors.green,
      inactiveThumbColor: Colors.white,
      inactiveTrackColor: const Color.fromARGB(255, 221, 221, 221),
      onChanged: (value) => changeSwitch(value),
    );
  }
}
