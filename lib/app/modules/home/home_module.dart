import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_a/app/modules/home/home_controller.dart';
import 'package:project_a/app/modules/home/home_page.dart';
import 'package:project_a/app/modules/home/repositories/poke_repository.dart';
import 'package:project_a/app/shared/utils/constants.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController(i.get<PokeRepository>())),
    Bind((i) => PokeRepository(i.get<Dio>())),
    Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
  ];
}