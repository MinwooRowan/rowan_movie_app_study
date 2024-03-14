import 'package:flutter/material.dart';
import 'package:movie_app/data/model/daily_box_office_model.dart';

class MovieListViewWidget extends StatelessWidget {
  final BoxOfficeResultModel dailyBoxOfficeData;
  const MovieListViewWidget({super.key, required this.dailyBoxOfficeData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Title :  ${dailyBoxOfficeData.boxofficeType}'),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return _MovieInfoWidget(
                  movie: dailyBoxOfficeData.dailyBoxOfficeList[index],
                );
              },
              itemCount: dailyBoxOfficeData.dailyBoxOfficeList.length,
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieInfoWidget extends StatelessWidget {
  final DailyBoxOfficeMovieModel movie;
  const _MovieInfoWidget({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(movie.movieNm ?? ''),
          const SizedBox(width: 10),
          Text(
            movie.openDt ?? '',
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
