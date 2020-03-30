import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_a/app/app.widget.dart';
import 'package:project_a/app/app_controller.dart';
import 'package:project_a/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: HomeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}