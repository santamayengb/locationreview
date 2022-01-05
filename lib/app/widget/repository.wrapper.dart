import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locationreview/service/chopper%20service/api.service.dart';

import 'package:locationreview/service/repo/review.repo.dart';

class RepositoryWrapper extends StatelessWidget {
  const RepositoryWrapper(
      {Key? key, required this.child, required this.apiSerivce})
      : super(key: key);

  final Widget child;
  final ApiSerivce apiSerivce;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => ReviewRepo(apiSerivce: apiSerivce),
        )
      ],
      child: child,
    );
  }
}
