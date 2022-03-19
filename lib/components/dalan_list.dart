import 'package:flutter/material.dart';
import 'package:zodiac_signs/screens/dalan_detail_screen.dart';

class DalanList extends StatefulWidget {
  final String dalanName;
  final String dalanImage;
  final int index;
  const DalanList({
    Key? key,
    required this.dalanName,
    required this.dalanImage,
    required this.index,
  }) : super(key: key);

  @override
  State<DalanList> createState() => _DalanListState();
}

class _DalanListState extends State<DalanList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => DalanDetailScreen(index: widget.index),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${widget.index + 1}',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w300),
            ),
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: Image.asset(
                widget.dalanImage,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              widget.dalanName,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 23,
            )
          ],
        ),
      ),
    );
  }
}
