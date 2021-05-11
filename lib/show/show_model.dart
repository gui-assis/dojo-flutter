import 'dart:convert';

import 'package:dojo/show/index.dart';
import 'package:equatable/equatable.dart';

/// use https://marketplace.visualstudio.com/items?itemName=BendixMa.dart-data-class-generator
class ShowModel extends Equatable {
  final int id;
  final String name;
  final String image;
  final String summary;

  ShowModel(this.id, this.name, this.image, this.summary);

  @override
  List<Object> get props => [id, name];

  factory ShowModel.fromJson(Map<String, dynamic> json) {
    
    final int showId = json['id'];
    final String name = json['name'];
    final String originalImage = json['image']['original'];
    final String summary = json['summary'];

    return ShowModel(showId, name, originalImage, summary);
  }
}