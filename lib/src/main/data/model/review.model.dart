import 'package:json_annotation/json_annotation.dart';

part 'review.model.g.dart';

@JsonSerializable(explicitToJson: true)
class ReviewResponseModel {
  ReviewResponseModel({
    required this.data,
  });

  final List<Review> data;

  /// A necessary factory constructor for creating a new ReviewResponseModel instance
  /// from a map. Pass the map to the generated `_$ReviewResponseModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, ReviewResponseModel.
  factory ReviewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ReviewResponseModelToJson`.
  Map<String, dynamic> toJson() => _$ReviewResponseModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Review {
  Review({
    required this.id,
    required this.attributes,
  });

  final int id;
  final ReviewAttributes attributes;

  /// A necessary factory constructor for creating a new Review instance
  /// from a map. Pass the map to the generated `_$ReviewFromJson()` constructor.
  /// The constructor is named after the source class, in this case, Review.
  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ReviewToJson`.
  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReviewAttributes {
  ReviewAttributes({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.image,
  });

  final String title;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final ReviewImage image;

  /// A necessary factory constructor for creating a new ReviewAttributes instance
  /// from a map. Pass the map to the generated `_$ReviewAttributesFromJson()` constructor.
  /// The constructor is named after the source class, in this case, ReviewAttributes.
  factory ReviewAttributes.fromJson(Map<String, dynamic> json) =>
      _$ReviewAttributesFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ReviewAttributesToJson`.
  Map<String, dynamic> toJson() => _$ReviewAttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReviewImage {
  ReviewImage({
    required this.data,
  });

  final ImageData data;

  /// A necessary factory constructor for creating a new ReviewImage instance
  /// from a map. Pass the map to the generated `_$ReviewImageFromJson()` constructor.
  /// The constructor is named after the source class, in this case, ReviewImage.
  factory ReviewImage.fromJson(Map<String, dynamic> json) =>
      _$ReviewImageFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ReviewImageToJson`.
  Map<String, dynamic> toJson() => _$ReviewImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImageData {
  ImageData({
    required this.id,
    required this.attributes,
  });

  final int id;
  final ImageAttributes attributes;

  /// A necessary factory constructor for creating a new ImageData instance
  /// from a map. Pass the map to the generated `_$ImageDataFromJson()` constructor.
  /// The constructor is named after the source class, in this case, ImageData.
  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ImageDataToJson`.
  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImageAttributes {
  ImageAttributes({
    required this.alternativeText,
    required this.width,
    required this.height,
    required this.size,
    required this.url,
  });

  final String alternativeText;

  final int width;
  final int height;

  final double size;
  final String url;

  /// A necessary factory constructor for creating a new ImageAttributes instance
  /// from a map. Pass the map to the generated `_$ImageAttributesFromJson()` constructor.
  /// The constructor is named after the source class, in this case, ImageAttributes.
  factory ImageAttributes.fromJson(Map<String, dynamic> json) =>
      _$ImageAttributesFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ImageAttributesToJson`.
  Map<String, dynamic> toJson() => _$ImageAttributesToJson(this);
}
