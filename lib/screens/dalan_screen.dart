import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/dalan_list.dart';

class DalanScreen extends StatelessWidget {
  const DalanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ဒလန်စာရင်း"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.blueGrey,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Search ...",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade400,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey.shade100))),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 2.0),
                  child: DalanList(
                    index: index,
                    dalanName: "dalanName",
                    dalanImage: "assets/ass.jpg",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
