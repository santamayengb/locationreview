import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:locationreview/service/chopper%20service/api.service.dart';
import 'package:locationreview/src/main/data/model/review.model.dart';

part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewState> {
  ReviewCubit({required this.apiSerivce})
      : super(const ReviewState(status: Status.initial));

  final ApiSerivce apiSerivce;

  bool get isLoading => state.status == Status.loading;
}
