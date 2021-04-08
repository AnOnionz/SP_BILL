import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/presentation/widgets/single_filed.dart';

class SingleForm extends StatelessWidget {
  final bool isFirst;
  VoidCallback? onDelete;

  SingleForm({Key? key, this.isFirst = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size =MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height/32),
      child: Form(
        child: Container(
          child: Column(
            children: [
              !isFirst ? Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: onDelete??(){},
                child: Text('Xóa sản phẩm', style: kRedText,)),
              ): const SizedBox(),
              SingleField(label: 'Tên sản phẩm', width: double.infinity, small: true,),
              const SizedBox(height: 17,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleField(label: 'Ngành hàng', width: size.width / 4 -20 ,small: true, data: ['Thực phẩm', 'Điện tử'],),
                  SingleField(label: 'Số lượng', width: size.width / 12 - 20, small: true,),
                  SingleField(label: 'Đơn vị tính', width: size.width / 12 - 20, small: true,),
                  SingleField(label: 'Đơn giá', width: size.width / 12 - 20, small: true,),
                  SingleField(label: 'Tổng tiền', width: size.width / 8 - 20, small: true, disable: true,),
                ],
              ),
              const SizedBox(height: 19.0,),
            ],
          ),
        ),
      ),
    );
  }
}
