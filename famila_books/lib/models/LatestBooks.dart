import 'package:json_annotation/json_annotation.dart';

part 'LatestBooks.g.dart';

@JsonSerializable()
class LatestBooks {
    LatestBooks();

    String id;
    String cat_id;
    String aid;
    String book_title;
    String book_description;
    String book_cover_img;
    String book_bg_img;
    String book_file_type;
    String total_rate;
    String rate_avg;
    String book_views;
    String author_id;
    String author_name;
    String author_city_name;
    String author_description;
    String author_image;
    String cid;
    String category_name;
    String category_image;
    String category_image_thumb;
    
    factory LatestBooks.fromJson(Map<String,dynamic> json) {
        return _$LatestBooksFromJson(json);
    }
    Map<String, dynamic> toJson() => _$LatestBooksToJson(this);
}
