// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_box_office_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyBoxOfficeRequestModel _$DailyBoxOfficeRequestModelFromJson(
        Map<String, dynamic> json) =>
    DailyBoxOfficeRequestModel(
      targetDt: json['targetDt'] as String,
      key: json['key'] as String?,
      itemPerPage: json['itemPerPage'] as String?,
      multiMovieYn:
          $enumDecodeNullable(_$MultiMovieYnEnumMap, json['multiMovieYn']),
      repNationCd: json['repNationCd'] as String?,
      wideAreaCd: json['wideAreaCd'] as String?,
    );

Map<String, dynamic> _$DailyBoxOfficeRequestModelToJson(
        DailyBoxOfficeRequestModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'targetDt': instance.targetDt,
      'itemPerPage': instance.itemPerPage,
      'multiMovieYn': _$MultiMovieYnEnumMap[instance.multiMovieYn],
      'repNationCd': instance.repNationCd,
      'wideAreaCd': instance.wideAreaCd,
    };

const _$MultiMovieYnEnumMap = {
  MultiMovieYn.Y: 'Y',
  MultiMovieYn.N: 'N',
};

BoxOfficeResponseModel _$BoxOfficeResponseModelFromJson(
        Map<String, dynamic> json) =>
    BoxOfficeResponseModel(
      boxOfficeResult: BoxOfficeResultModel.fromJson(
          json['boxOfficeResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoxOfficeResponseModelToJson(
        BoxOfficeResponseModel instance) =>
    <String, dynamic>{
      'boxOfficeResult': instance.boxOfficeResult,
    };

BoxOfficeResultModel _$BoxOfficeResultModelFromJson(
        Map<String, dynamic> json) =>
    BoxOfficeResultModel(
      boxofficeType: json['boxofficeType'] as String,
      showRange: json['showRange'] as String,
      dailyBoxOfficeList: (json['dailyBoxOfficeList'] as List<dynamic>)
          .map((e) =>
              DailyBoxOfficeMovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoxOfficeResultModelToJson(
        BoxOfficeResultModel instance) =>
    <String, dynamic>{
      'boxofficeType': instance.boxofficeType,
      'showRange': instance.showRange,
      'dailyBoxOfficeList': instance.dailyBoxOfficeList,
    };

DailyBoxOfficeMovieModel _$DailyBoxOfficeMovieModelFromJson(
        Map<String, dynamic> json) =>
    DailyBoxOfficeMovieModel(
      json['rnum'] as String?,
      json['rank'] as String?,
      json['rankInten'] as String?,
      json['rankOldAndNew'] as String?,
      json['movieCd'] as String?,
      json['movieNm'] as String?,
      json['openDt'] as String?,
      json['salesAmt'] as String?,
      json['salesShare'] as String?,
      json['salesInten'] as String?,
      json['salesChange'] as String?,
      json['salesAcc'] as String?,
      json['audiCnt'] as String?,
      json['audiInten'] as String?,
      json['audiChange'] as String?,
      json['audiAcc'] as String?,
      json['scrnCnt'] as String?,
      json['showCnt'] as String?,
    );

Map<String, dynamic> _$DailyBoxOfficeMovieModelToJson(
        DailyBoxOfficeMovieModel instance) =>
    <String, dynamic>{
      'rnum': instance.rnum,
      'rank': instance.rank,
      'rankInten': instance.rankInten,
      'rankOldAndNew': instance.rankOldAndNew,
      'movieCd': instance.movieCd,
      'movieNm': instance.movieNm,
      'openDt': instance.openDt,
      'salesAmt': instance.salesAmt,
      'salesShare': instance.salesShare,
      'salesInten': instance.salesInten,
      'salesChange': instance.salesChange,
      'salesAcc': instance.salesAcc,
      'audiCnt': instance.audiCnt,
      'audiInten': instance.audiInten,
      'audiChange': instance.audiChange,
      'audiAcc': instance.audiAcc,
      'scrnCnt': instance.scrnCnt,
      'showCnt': instance.showCnt,
    };
