import 'package:flutter/material.dart';

class TafaselEsthlakView extends StatefulWidget {
  @override
  _TafaselEsthlakViewState createState() => _TafaselEsthlakViewState();
}

class _TafaselEsthlakViewState extends State<TafaselEsthlakView> {
  List<Map> _data = [
    {'title': 'عرض فليكسات اكتر', 'time': 'صالحة حتي 20-10-2020'},
    {'title': 'فليكسات مترحلة', 'time': 'صالحة حتي 20-10-2020'},
    {'title': 'فليكس الباقة الاساسية', 'time': 'صالحة حتي 20-10-2020'},
  ];
  Widget _Tafasel({String title, String time}) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: MediaQuery.of(context).size.width / 20),
              ),
              Text(
                time,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: MediaQuery.of(context).size.width / 25),
              )
            ],
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'تفاصيل الفليكسات المتبقية من الباقة',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: MediaQuery.of(context).size.width / 25),
        ),
        Divider(
          thickness: 0.5,
          indent: 10,
          endIndent: 10,
          color: Colors.grey,
        ),
        Container(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _data.length,
              itemBuilder: (ctx, index) {
                return _Tafasel(
                  title: _data[index]['title'],
                  time: _data[index]['time'],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
