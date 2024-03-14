import 'package:dio/dio.dart';
import 'package:movie_app/config/app_config.dart';
import 'package:movie_app/core/util/dio.dart';
import 'package:movie_app/data/datasource/movie_datasource.dart';
import 'package:movie_app/data/model/daily_box_office_model.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_repository_impl.g.dart';

@Riverpod(keepAlive: true)
MovieRepository movieRepository(MovieRepositoryRef ref) {
  final Dio dio = ref.read(dioProvider);
  final MovieDataSource movieDataSource = MovieDataSource(dio);
  return MovieRepositoryImpl(movieDataSource);
}

class MovieRepositoryImpl implements MovieRepository {
  final MovieDataSource _movieDataSource;
  MovieRepositoryImpl(this._movieDataSource);
  @override
  Future<BoxOfficeResultModel> getDailyBoxOffice(
      {required DailyBoxOfficeRequestModel dailyBoxOfficeRequestModel}) async {
    final response = await _movieDataSource.getDailyBoxOffice(
      dailyBoxOfficeRequestModel.copyWith(
        key: AppConfig.movieAPiKey,
      ),
    );
    return response.boxOfficeResult;
  }
}
