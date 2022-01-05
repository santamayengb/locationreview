import 'package:flutter/material.dart';
import 'package:locationreview/app/widget/bloc_provider.wrapper.dart';
import 'package:locationreview/app/widget/repository.wrapper.dart';
import 'package:locationreview/service/chopper%20service/api.service.dart';
import 'package:locationreview/src/main/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.apiSerivce}) : super(key: key);

  final ApiSerivce apiSerivce;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProviderWrapper(
            apiSerivce: apiSerivce,
            child: RepositoryWrapper(
                apiSerivce: apiSerivce, child: const MainPage())));
  }
}
