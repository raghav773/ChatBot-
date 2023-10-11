import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ModalsDropdownwidget extends StatefulWidget {
  const ModalsDropdownwidget({Key? key}) : super(key: key);

  @override
  State<ModalsDropdownwidget> createState() => _ModalsDropdownwidgetState();
}

class _ModalsDropdownwidgetState extends State<ModalsDropdownwidget> {
  String currentModel = "Model1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: scaffoldBackgroundColor,
      iconEnabledColor: Colors.white,
      items: getModelsItem,
      value: currentModel,
      onChanged: (Value) {
        setState(() {
          currentModel = Value.toString();
        });
      },
    );
  }
}
