import 'package:flutter/material.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';

class Pagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PaginationItem(child: Icon(Icons.arrow_back_ios_outlined),),
          PaginationItem(child: Text('1'), isActive: true,),
          PaginationItem(child: Text('2')),
          PaginationItem(child: Text('3')),
          Container(height:33, width:33, alignment: Alignment.bottomCenter, child: Text('...',)),
          PaginationItem(child: Text('4')),
          PaginationItem(child: Icon(Icons.arrow_forward_ios_outlined),),
        ],

      ),
    );
  }
}

class PaginationItem extends StatelessWidget{
 final bool isActive;
final Widget child;

  const PaginationItem({Key? key, this.isActive = false, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 33,
        width: 33,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: isActive ? kGreenColor : kPaginationFill,
          border: Border.all(
            color: isActive ? Colors.transparent : kPaginationBorder
          )
        ),
        child: Center(child: child),
      ),
    );
  }

}
