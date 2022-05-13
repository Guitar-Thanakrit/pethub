// To parse this JSON data, do
//
//     final producttest = producttestFromJson(jsonString);

import 'dart:convert';

List<Producttest> producttestFromJson(String str) => List<Producttest>.from(
    json.decode(str).map((x) => Producttest.fromJson(x)));

String producttestToJson(List<Producttest> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Producttest {
  Producttest({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  int id;
  String title;
  double price;
  String description;
  dynamic category;
  String image;
  dynamic rating;

  factory Producttest.fromJson(Map<String, dynamic> json) => Producttest(
        id: json["id"],
        title: json["title"],
        // ignore: prefer_null_aware_operators
        price: json["price"] == null ? null : json["price"].toDouble(),
        description: json["description"],
        category: json["category"] == null ? null : categoryValues.map[json["category"]],
        image: json["image"],
        rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category == null ? null : categoryValues.reverse[category],
        "image": image,
        "rating": rating == null ? null : rating.toJson(),
      };
}

// ignore: constant_identifier_names
enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

final  categoryValues =  EnumValues({
  "electronics": Category.ELECTRONICS,
  "jewelery": Category.JEWELERY,
  "men's clothing": Category.MEN_S_CLOTHING,
  "women's clothing": Category.WOMEN_S_CLOTHING
});

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  double rate;
  int count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"] == null ? null : json["rate"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}

class  EnumValues <T> { 
  EnumValues(this.map);
  Map<String, T> map;
  // Map<T, String> reverse;
  Map<T, String> get reverse {
    reverse;
    return reverse;
  }
}
