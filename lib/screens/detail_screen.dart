import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/zodiac_detail.dart';
import 'package:zodiac_signs/data/zodiac.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  const DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(zodiacList[index]['zodiacName']),
      ),
      body: ZodiacDetail(
        zImage: zodiacList[index]['zodiacImage'],
        zDate: zodiacList[index]['zodiacDate'],
        zSubName: zodiacList[index]['zodiacSubName'],
        zName: zodiacList[index]['zodiacName'],
        zPlanet: zodiacList[index]['zodiacPlanet'],
        zAbout: zodiacList[index]['zodiacAbout'],
        zElement: zodiacList[index]['zodiacElement'],
      ),
    );
  }
}
