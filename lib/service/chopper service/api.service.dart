import 'package:chopper/chopper.dart';
import 'package:locationreview/src/main/data/model/review.model.dart';

part 'api.service.chopper.dart';

@ChopperApi()
abstract class ApiSerivce extends ChopperService {
  static ApiSerivce create({ChopperClient? client}) => _$ApiSerivce(client);
  // static APIService create({ChopperClient? client}) => _$APIService(client);

  @Get(path: "/reviews")
  Future<Response<ReviewResponseModel>> getData(
      {@Query('popolate') String getAllField = "*",
      @Query('populate') String getImage = 'image'});
}
