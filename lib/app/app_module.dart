import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_a/app/app.widget.dart';
import 'package:project_a/app/app_controller.dart';
import 'package:project_a/app/pages/home/home_controller.dart';
import 'package:project_a/app/pages/home/home_page.dart';
import 'package:project_a/app/shared/repositories/poke_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_a/app/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController(i.get<PokeRepository>())),
    Bind((i) => PokeRepository(i.get<Dio>())),
    Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),


  ];

  @override
  List<Router> get routers => [
    Router('/',child: (_,args) => HomePage()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}