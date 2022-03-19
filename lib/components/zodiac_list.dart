import 'package:flutter/material.dart';
import 'package:zodiac_signs/screens/detail_screen.dart';

class ZodiacList extends StatefulWidget {
  final String zodiacName;
  final String zodiacImage;
  final String zodiacDate;
  final int index;
  const ZodiacList(
      {Key? key,
      required this.zodiacName,
      required this.zodiacImage,
      required this.index,
      required this.zodiacDate})
      : super(key: key);

  @override
  State<ZodiacList> createState() => _ZodiacListState();
}

class _ZodiacListState extends State<ZodiacList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => DetailScreen(index: widget.index),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 120,
              alignment: Alignment.center,
              child: Image.asset(
                widget.zodiacImage,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              widget.zodiacName,
              style: const TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            Text(
              widget.zodiacDate,
              style: const TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
