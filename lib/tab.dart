import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/nav_cubit.dart';
import 'features/list_bill/presentation/screens/dspm.dart';



class TabUi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, String>(
        builder: (context, state) {
          if(state == 'Danh sách phiếu mua'){
            return DSPM();
          }
          if(state == 'Phân bổ outlet'){
            return Container();
          }
          return Container();
    });
  }
}
