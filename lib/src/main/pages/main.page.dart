import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locationreview/src/main/logic/cubit/review_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final d = context.read<ReviewCubit>();
    log(d.state.responseModel.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Reviews"),
      ),
    );
  }
}
