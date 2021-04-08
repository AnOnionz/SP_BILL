import 'package:flutter/material.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';
import 'package:ten_gi_cung_duoc/core/widgets/logout_btn.dart';
import 'package:ten_gi_cung_duoc/core/widgets/user_info.dart';

import 'menu_item.dart';

class NavBar extends StatelessWidget {
  final String userName;
  final int index;

  const NavBar({Key? key, required this.userName, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGreenColor,
      child: Row(
        children: [
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 30.0, right: 75.0),
              child: Image.asset('assets/images/logo_nav.png', height: 34,),
            ),
          ),
          MenuItem(title: 'Nhập phiếu mua', route: '/bill-input', isActive: index == 1,),
          MenuItem(title: 'Danh sách phiếu mua',route: '/list-bill',isActive: index == 2),
          MenuItem(title: 'Phân bổ outlet', route: '/asign-outlet',isActive: index == 3),
          const Spacer(),
          UserInfo(name: userName),
          LogoutButton(onPressed: (){}),
          const SizedBox(width: 10,),
        ],
      ),
    );
  }
}
