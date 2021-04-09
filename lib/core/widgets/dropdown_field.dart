import 'package:flutter/material.dart';
import '../../core/common/constants.dart';

class DropdownField extends StatefulWidget {
  final String label;
  final double width;
  final bool small;
  final List<String>? data;

  const DropdownField({Key? key, required this.label, required this.width, this.small = false, this.data}) : super(key: key);

  @override
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {

  dynamic selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(widget.label, style: widget.small ? kBlackSmallSmallText : kBlackSmallText ,),
    const SizedBox(height: 4.0,),
    Container(
    height: 37,
    width: widget.width,
    child: FormField<String>(
    builder: (FormFieldState<String> state) {
    return InputDecorator(
    decoration: InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
    borderSide: BorderSide(
    color: kGreyColor.withOpacity(0.5),
    width: 1,
    )
    ),),
    isEmpty:selectedItem == '',
    child: DropdownButtonHideUnderline(
    child: DropdownButton<String>(
    icon: Icon(Icons.keyboard_arrow_down),
    value: selectedItem,
    isDense: true,
    onChanged: (String? newValue) {
    setState(() {
    selectedItem = newValue;
    state.didChange(newValue);
    });
    },

    items: widget.data!.map((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    ),
    ),
    );
    },
    ),
    )
        ]
    )
    );
  }
}
