import 'package:flutter/material.dart';

class DalanDetail extends StatefulWidget {
  final String dalanImage;
  final String dalanAge;
  final String dalanAddress;
  final String dalanDescription;
  const DalanDetail(
      {Key? key,
      required this.dalanImage,
      required this.dalanAge,
      required this.dalanAddress,
      required this.dalanDescription})
      : super(key: key);

  @override
  State<DalanDetail> createState() => _DalanDetailState();
}

class _DalanDetailState extends State<DalanDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                widget.dalanImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
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
                  _dataRowList('အသက်', widget.dalanAge),
                  _dataRowList('လိပ်စာ', widget.dalanAddress),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 20.0, left: 20.0, right: 15.0, bottom: 20.0),
            child: Text(
              '        ${widget.dalanDescription}',
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
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
