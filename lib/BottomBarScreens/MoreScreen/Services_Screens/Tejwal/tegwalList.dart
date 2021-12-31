import 'package:flutter/material.dart';

class TejwalList extends StatelessWidget {
  final String image;
  final String title;
  final Function onPress;
  TejwalList({this.image, this.title, this.onPress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 20,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 6,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: MediaQuery.of(context).size.width / 24),
                      ),
                      Row(
                        children: [
                          Text(
                            'للمزيد',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    MediaQuery.of(context).size.width / 22),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.redAccent,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
