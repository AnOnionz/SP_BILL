import 'package:flutter_bloc/flutter_bloc.dart';

class NavCubit extends Cubit<String> {
  NavCubit() : super('Nhập phiếu mua');

  menuSelected(String name){
    emit(name);
  }
}