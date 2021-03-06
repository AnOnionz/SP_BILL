import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';
import 'package:ten_gi_cung_duoc/features/bill_input/presentation/widgets/single_form.dart';

class BillInputForm extends StatefulWidget {
  final dynamic? data;

  const BillInputForm({Key? key, this.data}) : super(key: key);
  @override
  _BillInputFormState createState() => _BillInputFormState();
}

class _BillInputFormState extends State<BillInputForm> {
  ScrollController _scrollController = ScrollController();
  late final forms = [
    SingleForm(
      isFirst: true,
    ),
  ];

  _addNew() {
    setState(() {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 205,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 100),
      );
      forms.add(
        SingleForm(
          isFirst: false,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height / 1.8),
          child: Shortcuts(
              shortcuts: <LogicalKeySet, Intent>{
                LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.enter):
                    MyIntent(),
              },
              child: Actions(
                actions: <Type, Action<Intent>>{
                  MyIntent: CallbackAction<MyIntent>(
                      onInvoke: (MyIntent intent) => _addNew()),
                },
                child: Focus(
                  autofocus: true,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      forms[index].onDelete = () {
                        setState(() {
                          forms.removeAt(index);
                        });
                      };
                      return forms[index];
                    },
                    itemCount: forms.length,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                  ),
                ),
              )),
        ),
        InkWell(
          onTap: _addNew,
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(5.0),
            strokeWidth: 2,
            color: kGreyColor,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                height: 37,
                width: double.infinity,
                color: kGreyColor.withOpacity(0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Center(
                        child: Text(
                      'Th??m sa??n ph????m',
                      style: kBlackSmallText,
                    )),
                    Text(
                      'Phi??m t????t Alt + Enter',
                      style: kGreySmallText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyIntent extends Intent {
  const MyIntent();
}
