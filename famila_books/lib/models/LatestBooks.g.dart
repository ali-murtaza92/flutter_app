// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LatestBooks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestBooks _$LatestBooksFromJson(Map<String, dynamic> json) {
  return LatestBooks()
    ..id = json['id'] as String
    ..cat_id = json['cat_id'] as String
    ..aid = json['aid'] as String
    ..book_title = json['book_title'] as String
    ..book_description = json['book_description'] as String
    ..book_cover_img = json['book_cover_img'] as String
    ..book_bg_img = json['book_bg_img'] as String
    ..book_file_type = json['book_file_type'] as String
    ..total_rate = json['total_rate'] as String
    ..rate_avg = json['rate_avg'] as String
    ..book_views = json['book_views'] as String
    ..author_id = json['author_id'] as String
    ..author_name = json['author_name'] as String
    ..author_city_name = json['author_city_name'] as String
    ..author_description = json['author_description'] as String
    ..author_image = json['author_image'] as String
    ..cid = json['cid'] as String
    ..category_name = json['category_name'] as String
    ..category_image = json['category_image'] as String
    ..category_image_thumb = json['category_image_thumb'] as String;
}

Map<String, dynamic> _$LatestBooksToJson(LatestBooks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.cat_id,
      'aid': instance.aid,
      'book_title': instance.book_title,
      'book_description': instance.book_description,
      'book_cover_img': instance.book_cover_img,
      'book_bg_img': instance.book_bg_img,
      'book_file_type': instance.book_file_type,
      'total_rate': instance.total_rate,
      'rate_avg': instance.rate_avg,
      'book_views': instance.book_views,
      'author_id': instance.author_id,
      'author_name': instance.author_name,
      'author_city_name': instance.author_city_name,
      'author_description': instance.author_description,
      'author_image': instance.author_image,
      'cid': instance.cid,
      'category_name': instance.category_name,
      'category_image': instance.category_image,
      'category_image_thumb': instance.category_image_thumb
    };
