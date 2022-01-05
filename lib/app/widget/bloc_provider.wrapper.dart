import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locationreview/service/chopper%20service/api.service.dart';
import 'package:locationreview/src/main/logic/cubit/review_cubit.dart';

class BlocProviderWrapper extends StatelessWidget {
  const BlocProviderWrapper(
      {Key? key, required this.child, required this.apiSerivce})
      : super(key: key);

  final Widget child;
  final ApiSerivce apiSerivce;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ReviewCubit(apiSerivce: apiSerivce),
        )
      ],
      child: child,
    );
  }
}
