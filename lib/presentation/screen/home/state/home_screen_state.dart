import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/data/model/daily_box_office_model.dart';
import 'package:movie_app/provider/daily_box_office_provider.dart';

mixin class HomeScreenState {
  AsyncValue<BoxOfficeResultModel> dailyBoxOfficeState(WidgetRef ref) =>
      ref.watch(dailyBoxOfficeProvider);
}
