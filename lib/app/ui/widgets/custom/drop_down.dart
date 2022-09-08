import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:po2023/app/core/constants/app_constants.dart';

class DropDownWidget extends StatefulWidget {
  final ThemeData themeData;

  const DropDownWidget({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    String? dropdownvalue = states[0].toString();

    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            const Icon(
              Icons.arrow_drop_down,
              color: colorWhite,
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                'Select Item',
                style: widget.themeData.textTheme.button,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: states
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: widget.themeData.textTheme.button,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: dropdownvalue,
        onChanged: (value) {
          setState(() {
            dropdownvalue = value as String;
          });
        },
        icon: const Icon(
          Icons.keyboard_arrow_down,
        ),
        iconSize: 14,
        iconEnabledColor: colorWhite,
        buttonHeight: 50,
        buttonWidth: 160,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: primaryColor,
        ),
        // buttonElevation: 15,
        // itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: 200,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: primaryColor,
        ),
        dropdownElevation: 1,
        scrollbarRadius: const Radius.circular(5),
        // scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        // offset: const Offset(20, 0),
      ),
    );
  }
}
