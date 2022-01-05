import 'package:chopper/chopper.dart';
import 'package:locationreview/service/chopper%20service/api.service.dart';
import 'package:locationreview/src/main/data/model/review.model.dart';

import 'helper/generic_json_convertor.dart';

final chopper = ChopperClient(
    baseUrl: "https://strapi-tip5b.ondigitalocean.app/api",
    services: [
      ApiSerivce.create(),
    ],
    converter: GenericJsonConvertor(
      {
        ReviewResponseModel: (json) => ReviewResponseModel.fromJson(json),
      },
    ),
    errorConverter: const JsonConverter(),
    interceptors: [
      HttpLoggingInterceptor(),
    ]);
