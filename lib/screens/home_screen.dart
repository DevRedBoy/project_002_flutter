import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/navigation_drawer.dart';
import 'package:zodiac_signs/components/zodiac_list.dart';
import 'package:zodiac_signs/data/zodiac.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text("Zodiac Signs"),
      ),
      body: SafeArea(
        child: GridView.builder(
            padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
            itemCount: zodiacList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return ZodiacList(
                  index: index,
                  zodiacName: zodiacList[index]['zodiacName'],
                  zodiacImage: zodiacList[index]['zodiacImage'],
                  zodiacDate: zodiacList[index]['zodiacDate']);
            }),
      ),
    );
  }
}
