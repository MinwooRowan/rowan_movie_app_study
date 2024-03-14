import 'package:movie_app/data/model/daily_box_office_model.dart';

abstract class MovieRepository {
  Future<BoxOfficeResultModel> getDailyBoxOffice({
    required DailyBoxOfficeRequestModel dailyBoxOfficeRequestModel,
  });
}
