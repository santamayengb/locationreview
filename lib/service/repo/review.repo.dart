import 'dart:developer';

import 'package:locationreview/service/chopper%20service/api.service.dart';

class ReviewRepo {
  ReviewRepo({required this.apiSerivce});
  final ApiSerivce apiSerivce;

  fetchdata() async {
    final data = await apiSerivce.getData();

    log(data.base.statusCode.toString());
  }
}
