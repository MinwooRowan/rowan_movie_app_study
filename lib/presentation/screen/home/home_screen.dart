import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/util/date_time_formatter_util.dart';
import 'package:movie_app/data/model/daily_box_office_model.dart';
import 'package:movie_app/presentation/layout/default_layout.dart';
import 'package:movie_app/presentation/screen/home/state/home_screen_state.dart';
import 'package:movie_app/presentation/screen/home/widget/movie_list_view_widget.dart';
import 'package:movie_app/provider/daily_box_office_provider.dart';

class HomeScreen extends ConsumerWidget with HomeScreenState {
  static const String route = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime targetDt = DateTime.now().subtract(const Duration(days: 1));
    return DefaultLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dailyBoxOfficeState(ref).when(
                data: (data) {
                  return MovieListViewWidget(dailyBoxOfficeData: data);
                },
                loading: () => const CircularProgressIndicator(),
                error: (error, stackTrace) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    'Error: $error',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  ref.read(dailyBoxOfficeProvider.notifier).fetchDailyBoxOffice(
                        dailyBoxOfficeRequestModel: DailyBoxOfficeRequestModel(
                          targetDt: DateTimeFormatterUtil.formatDateYYYYMMDD(
                            targetDt,
                          ),
                        ),
                      );
                },
                child: const Text('Fetch Daily Box Office'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
