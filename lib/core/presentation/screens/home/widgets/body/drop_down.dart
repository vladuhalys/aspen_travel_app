import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  final List<String> items = [
    'Aspen, USA',
    'Los Angeles, USA',
    'New York, USA',
    'Utah, USA',
  ];
  String? selectedValue = 'Aspen, USA';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        alignment: Alignment.centerLeft,
        items: items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xFF606060),
                        fontWeight: FontWeight.w400),
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        buttonStyleData: const ButtonStyleData(
          padding: EdgeInsets.only(left: 5),
          width: 125,
        ),
        iconStyleData: const IconStyleData(
            icon: Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF176FF2),
          size: 20,
        )),
        dropdownStyleData: const DropdownStyleData(
          elevation: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: Colors.white,
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
      ),
    );
  }
}
