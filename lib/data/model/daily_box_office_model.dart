// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'daily_box_office_model.g.dart';

enum MultiMovieYn {
  @JsonValue('Y')
  Y,
  @JsonValue('N')
  N,
}

@JsonSerializable()
class DailyBoxOfficeRequestModel {
  final String? key;
  final String targetDt;
  final String? itemPerPage;
  final MultiMovieYn? multiMovieYn;
  final String? repNationCd;
  final String? wideAreaCd;

  DailyBoxOfficeRequestModel({
    required this.targetDt,
    this.key,
    this.itemPerPage,
    this.multiMovieYn,
    this.repNationCd,
    this.wideAreaCd,
  });

  DailyBoxOfficeRequestModel copyWith({
    String? key,
    String? targetDt,
    String? itemPerPage,
    MultiMovieYn? multiMovieYn,
    String? repNationCd,
    String? wideAreaCd,
  }) {
    return DailyBoxOfficeRequestModel(
      targetDt: targetDt ?? this.targetDt,
      key: key ?? this.key,
      itemPerPage: itemPerPage ?? this.itemPerPage,
      multiMovieYn: multiMovieYn ?? this.multiMovieYn,
      repNationCd: repNationCd ?? this.repNationCd,
      wideAreaCd: wideAreaCd ?? this.wideAreaCd,
    );
  }

  Map<String, dynamic> toJson() => _$DailyBoxOfficeRequestModelToJson(this);

  factory DailyBoxOfficeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DailyBoxOfficeRequestModelFromJson(json);
}

@JsonSerializable()
class BoxOfficeResponseModel {
  final BoxOfficeResultModel boxOfficeResult;

  BoxOfficeResponseModel({
    required this.boxOfficeResult,
  });

  Map<String, dynamic> toJson() => _$BoxOfficeResponseModelToJson(this);

  factory BoxOfficeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeResponseModelFromJson(json);
}

@JsonSerializable()
class BoxOfficeResultModel {
  final String boxofficeType;
  final String showRange;
  final List<DailyBoxOfficeMovieModel> dailyBoxOfficeList;

  BoxOfficeResultModel({
    required this.boxofficeType,
    required this.showRange,
    required this.dailyBoxOfficeList,
  });

  Map<String, dynamic> toJson() => _$BoxOfficeResultModelToJson(this);

  factory BoxOfficeResultModel.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeResultModelFromJson(json);
}

@JsonSerializable()
class DailyBoxOfficeMovieModel {
  final String? rnum;
  final String? rank;
  final String? rankInten;
  final String? rankOldAndNew;
  final String? movieCd;
  final String? movieNm;
  final String? openDt;
  final String? salesAmt;
  final String? salesShare;
  final String? salesInten;
  final String? salesChange;
  final String? salesAcc;
  final String? audiCnt;
  final String? audiInten;
  final String? audiChange;
  final String? audiAcc;
  final String? scrnCnt;
  final String? showCnt;

  DailyBoxOfficeMovieModel(
    this.rnum,
    this.rank,
    this.rankInten,
    this.rankOldAndNew,
    this.movieCd,
    this.movieNm,
    this.openDt,
    this.salesAmt,
    this.salesShare,
    this.salesInten,
    this.salesChange,
    this.salesAcc,
    this.audiCnt,
    this.audiInten,
    this.audiChange,
    this.audiAcc,
    this.scrnCnt,
    this.showCnt,
  );

  Map<String, dynamic> toJson() => _$DailyBoxOfficeMovieModelToJson(this);

  factory DailyBoxOfficeMovieModel.fromJson(Map<String, dynamic> json) =>
      _$DailyBoxOfficeMovieModelFromJson(json);
}
