import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final String name;
  final String image;
  final bool isNew;
  final Function tapped;

  const DrawerList({
    this.name,
    this.image,
    this.isNew,
    this.tapped,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    if (isNew == true)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(240, 7, 7, 1)),
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                        child: Text(
                          'جديد',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    SizedBox(width: MediaQuery.of(context).size.width - 250),
                    Text(
                      name,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
                    ),
                    SizedBox(width: 12),
                    Image.asset(
                      image,
                      height: 45,
                    ),
                  ],
                )
              ],
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
              indent: 25,
              endIndent: 25,
            ),
          ],
        ),
      ),
    );
  }
}
