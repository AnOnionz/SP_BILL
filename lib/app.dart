import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ten_gi_cung_duoc/core/nav_cubit.dart';
import 'core/widgets/nav.dart';
import 'features/list_bill/presentation/screens/dspm.dart';
import 'tab.dart';
import 'responsive.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: Container()
    );
  }
}
