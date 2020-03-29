import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_a/app/app.widget.dart';
import 'package:project_a/app/app_controller.dart';
import 'package:project_a/app/pages/home/home_controller.dart';
import 'package:project_a/app/pages/home/home_page.dart';
import 'package:project_a/app/pages/other/other_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];

  @override
  List<Router> get routers => [
    Router('/',child: (_,args) => HomePage()),
    Router('/other', child: (_, args) => OtherPage()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}