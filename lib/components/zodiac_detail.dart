import 'package:flutter/material.dart';

class ZodiacDetail extends StatefulWidget {
  final String zSubName;
  final String zAbout;
  final String zDate;
  final String zName;
  final String zImage;
  final String zPlanet;
  final String zElement;
  const ZodiacDetail({
    Key? key,
    required this.zSubName,
    required this.zAbout,
    required this.zDate,
    required this.zName,
    required this.zImage,
    required this.zPlanet,
    required this.zElement,
  }) : super(key: key);

  @override
  State<ZodiacDetail> createState() => _ZodiacDetailState();
}

class _ZodiacDetailState extends State<ZodiacDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 300,
                child: Image.asset(
                  widget.zImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: DataTable(
                  headingRowHeight: 0,
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(""),
                    ),
                    DataColumn(
                      label: Text(
                        '',
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    _dataRowList('Date', widget.zDate),
                    _dataRowList('Zodiac Symbol', widget.zSubName),
                    _dataRowList('Planet', widget.zPlanet),
                    _dataRowList('Elements', widget.zElement)
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    "About ${widget.zName}",
                    style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 20.0),
                  child: Text(
                    '        ${widget.zAbout}',
                    style: const TextStyle(fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  DataRow _dataRowList(String text1, String text2) {
    return DataRow(
      cells: <DataCell>[
        DataCell(
          SizedBox(
            width: 130,
            child: Text(
              text1,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ),
        DataCell(
          Text(
            text2,
          ),
        ),
      ],
    );
  }
}
