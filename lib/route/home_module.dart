import 'package:flutter_modular/flutter_modular.dart';
import '../features/asign_bill/presentations/screens/pbpm.dart';
import '../features/bill_input/presentation/screens/co.dart';
import '../features/asign_outlet/presentation/screens/pbo.dart';
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
    ChildRoute('/asign-outlet', child: (_, args) => PBO()),
    ChildRoute('/asign-bill', child: (_, args) => PBPM()),
    ChildRoute(
      '/bill-input/:id',
      child: (_, args) => NPM(id: args.params['id']),
    ),
  ];
}