part of 'review_cubit.dart';

enum Status {
  initial,
  loading,
  loaded,
  error,
}

class ReviewState extends Equatable {
  const ReviewState({required this.status, this.responseModel});

  final ReviewResponseModel? responseModel;
  final Status status;

  @override
  List<Object?> get props => [responseModel, status];
}
