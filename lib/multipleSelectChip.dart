import 'package:flutter/material.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  MultiSelectChip(this.reportList);
  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}
class _MultiSelectChipState extends State<MultiSelectChip> {
  String selectedChoice = "";
  // this function will build and return the choice list
  _buildChoiceList() {
    List<Widget> choices = List();
    widget.reportList.forEach((item) {
      choices.add(Container(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: ChoiceChip(
            label: Padding(
              padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 6.0,bottom: 6.0),
              child: Text(
                item,
               style: TextStyle(
                 fontSize: 15.0,
                 fontWeight: FontWeight.w500
               ), 
              ),
            ),
            selected: selectedChoice == item,
            selectedColor: Colors.lightGreen,
            onSelected: (selected) {
              setState(() {
                selectedChoice = item;
              });
            },
            backgroundColor: Color(0xffe6f2ff),
            labelStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ));
    });
    return choices;
  }
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}