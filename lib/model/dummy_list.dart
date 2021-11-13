// To parse this JSON data, do
//
//     final dummyList = dummyListFromJson(jsonString);

import 'dart:convert';

DummyList dummyListFromJson(String str) => DummyList.fromJson(json.decode(str));

String dummyListToJson(DummyList data) => json.encode(data.toJson());

class DummyList {
  DummyList({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int? userId;
  int? id;
  String? title;
  bool? completed;

  factory DummyList.fromJson(Map<String, dynamic> json) => DummyList(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
