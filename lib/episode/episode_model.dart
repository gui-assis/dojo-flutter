import 'dart:convert';

import 'package:dojo/episode/index.dart';
import 'package:equatable/equatable.dart';

/// use https://marketplace.visualstudio.com/items?itemName=BendixMa.dart-data-class-generator
class EpisodeModel extends Equatable {
  final String name;
  final String season;
  final String number;
  final String imageUrl;

  EpisodeModel(this.name, this.season, this.number, this.imageUrl);

  @override
  List<Object> get props => [name];

  EpisodeModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        season = json['season'],
        number = json['number'],
        imageUrl = json['image']['original'];
}


// {
// id: 1,
// url: "https://www.tvmaze.com/episodes/1/under-the-dome-1x01-pilot",
// name: "Pilot",
// season: 1,
// number: 1,
// type: "regular",
// airdate: "2013-06-24",
// airtime: "22:00",
// airstamp: "2013-06-25T02:00:00+00:00",
// runtime: 60,
// image: {
// medium: "https://static.tvmaze.com/uploads/images/medium_landscape/1/4388.jpg",
// original: "https://static.tvmaze.com/uploads/images/original_untouched/1/4388.jpg"
// },
// summary: "<p>When the residents of Chester's Mill find themselves trapped under a massive transparent dome with no way out, they struggle to survive as resources rapidly dwindle and panic quickly escalates.</p>",
// _links: {
// self: {
// href: "https://api.tvmaze.com/episodes/1"
// }
// }
// },