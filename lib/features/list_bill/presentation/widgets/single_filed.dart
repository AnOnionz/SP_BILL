import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';

class SingleField  extends StatefulWidget {
  final String label;
  final double width;
  final bool small;
  final List<String>? data;
  final bool disable;

  const SingleField({Key? key, required this.label, required this.width, this.small = false, this.data, this.disable = false}) : super(key: key);

  @override
  _SingleFieldState createState() => _SingleFieldState();
}

class _SingleFieldState extends State<SingleField> {

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
            child: widget.data != null ? FormField<String>(
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
            ): TextFormField(
              enabled: !widget.disable,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.disable ? kGreyColor.withOpacity(0.3) : Colors.white,
                suffixIcon: widget.disable ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/denied.png', height: 13, width: 13,),
                ) : Container(),
                contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: kGreyColor.withOpacity(0.5),
                    width: 1,
                  )
                ),
                errorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.redAccent,
                      width: 1,
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
