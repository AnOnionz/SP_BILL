import 'package:flutter_modular/flutter_modular.dart';
import '../features/statistic/presentation/screens/2.dart';
import '../features/statistic/presentation/screens/3.dart';
import '../features/statistic/presentation/screens/1.dart';
import '../features/asign_bill/presentations/screens/pbpm.dart';
import '../features/bill_input/presentation/screens/co.dart';
import '../features/bill_input/presentation/screens/npm.dart';
import '../features/list_bill/presentation/screens/dspm.dart';
import '../app.dart';



class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.singleton((i) => HomeBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => MyApp()),
    ChildRoute('/list-bill', child: (_, args) => DSPM()),
    ChildRoute('/select-outlet', child: (_, args) => CO()),
    ChildRoute('/asign-bill', child: (_, args) => PBPM()),
    ChildRoute('/statistic', child: (_, args) => SPDN()),
    ChildRoute(
      '/bill-input/:id',
      child: (_, args) => NPM(id: args.params['id']),
    ),
    ChildRoute(
      '/bill-edit/:id',
      child: (_, args) => SPM(id: args.params['id']),
    ),
    ChildRoute(
      '/statistic/:id',
      child: (_, args) => TKUser(id: args.params['id']),
    ),
  ];
}