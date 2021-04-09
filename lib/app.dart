import 'package:flutter/material.dart';
import 'features/asign_bill/presentations/screens/pbpm.dart';

import 'responsive.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: PBPM()
    );
  }
}
