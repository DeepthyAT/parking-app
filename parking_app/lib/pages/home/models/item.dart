import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:hexcolor/hexcolor.dart';

class GridItem extends Equatable {
  const GridItem(
      {required this.id,
      required this.label,
      this.color,
      this.path,
      this.imageUrl});

  factory GridItem.fromJson(Map<String, dynamic> json) => GridItem(
        id: json["id"],
        label: json["label"],
        path: json["path"],
        imageUrl: json["imageUrl"],
        color: json["color"] != null ? HexColor(json["color"]) : null,
      );

  final String id;
  final String label;
  final Color? color;
  final String? path;
  final String? imageUrl;

  GridItem copyWith(
          {String? id, String? label, String? path, String? imageUrl}) =>
      GridItem(
          id: id ?? this.id,
          label: label ?? this.label,
          path: path ?? this.path,
          imageUrl: imageUrl ?? this.imageUrl);

  Map<String, dynamic> toJson() =>
      {"id": id, "label": label, "path": path, "imageUrl": imageUrl};

  @override
  List<Object?> get props => [id, label, path, imageUrl];
}

abstract class GridItems {
  static const checkIn = 'in';
  static const checkOut = 'out';
}
