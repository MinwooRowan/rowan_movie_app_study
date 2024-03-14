import 'package:dio/dio.dart' hide Headers;
import 'package:movie_app/config/app_config.dart';
import 'package:movie_app/data/model/daily_box_office_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_datasource.g.dart';

@RestApi(baseUrl: AppConfig.baseUrl)
abstract class MovieDataSource {
  factory MovieDataSource(Dio dio, {String baseUrl}) = _MovieDataSource;

  @GET('boxoffice/searchDailyBoxOfficeList.json?')
  Future<BoxOfficeResponseModel> getDailyBoxOffice(
      @Queries() DailyBoxOfficeRequestModel dailyBoxOfficeRequestModel);
}
