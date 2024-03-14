import 'package:movie_app/core/util/logger.dart';
import 'package:movie_app/data/model/daily_box_office_model.dart';
import 'package:movie_app/data/repository/movie_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'daily_box_office_provider.g.dart';

@riverpod
class DailyBoxOffice extends _$DailyBoxOffice {
  @override
  AsyncValue<BoxOfficeResultModel> build() {
    return const AsyncLoading();
  }

  Future<void> fetchDailyBoxOffice(
      {required DailyBoxOfficeRequestModel dailyBoxOfficeRequestModel}) async {
    state = const AsyncLoading();
    try {
      final result = await ref.read(movieRepositoryProvider).getDailyBoxOffice(
            dailyBoxOfficeRequestModel: dailyBoxOfficeRequestModel,
          );

      state = AsyncData(result);
    } catch (e) {
      logger.e(e.toString());
      state = AsyncError(e, StackTrace.current);
    }
  }
}
