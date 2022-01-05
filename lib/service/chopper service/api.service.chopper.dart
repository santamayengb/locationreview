// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiSerivce extends ApiSerivce {
  _$ApiSerivce([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiSerivce;

  @override
  Future<Response<ReviewResponseModel>> getData(
      {String getAllField = "*", String getImage = 'image'}) {
    final $url = '/reviews';
    final $params = <String, dynamic>{
      'popolate': getAllField,
      'populate': getImage
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ReviewResponseModel, ReviewResponseModel>($request);
  }
}
