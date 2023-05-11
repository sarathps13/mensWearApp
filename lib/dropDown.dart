import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<DropdownMenuItem<String>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(const DropdownMenuItem(
      value: 'S',
      child: Text('S'),
    ));
    listDrop.add(const DropdownMenuItem(
      value: 'M',
      child: Text('M'),
    ));
    listDrop.add(const DropdownMenuItem(
      value: 'L',
      child: Text('L'),
    ));
    listDrop.add(const DropdownMenuItem(
      value: 'XL',
      child: Text('XL'),
    ));
  }

  String selected = 'S';
  @override
  Widget build(BuildContext context) {
    loadData();
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xff000000),
        ),
      ),
      margin: const EdgeInsets.only(left: 60, top: 25),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(6),
        value: selected,
        items: listDrop,
        onChanged: (String? newValue) {
          setState(
            () {
              selected = newValue!;
            },
          );
        },
        style: const TextStyle(
            fontFamily: 'poppins', fontSize: 18, color: Color(0xff000000)),
      ),
    );
  }
}
