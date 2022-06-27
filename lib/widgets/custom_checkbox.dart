import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({ Key? key }) : super(key: key);
  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}
class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isChecked ?
          Colors.white : Colors.transparent, 
          borderRadius: BorderRadius.circular(6),
          border: isChecked ? null : Border.all(color: Colors.black, width: 1.5)
        ),
        width: 20,
        height: 20,
        child: isChecked ? Icon(Icons.check, size: 20,color: Colors.black,) : null,
      ),
    );
  }
}