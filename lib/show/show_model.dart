import 'dart:convert';

import 'package:dojo/show/index.dart';
import 'package:equatable/equatable.dart';

/// use https://marketplace.visualstudio.com/items?itemName=BendixMa.dart-data-class-generator
class ShowModel extends Equatable {
  final String name;
  final String imageUrl;

  ShowModel(this.name, this.imageUrl);

  @override
  List<Object> get props => [name];

  ShowModel.fromJson(Map<String, dynamic> json)
      : name = json['name'], imageUrl = json['image']['original'];
}