import 'package:flutter/material.dart';

class SHokranServiceScreen extends StatefulWidget {
  @override
  _SHokranServiceScreenState createState() => _SHokranServiceScreenState();
}

class _SHokranServiceScreenState extends State<SHokranServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'خدمات شكرا',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Cairo',
                fontSize: MediaQuery.of(context).size.width / 18,
                fontWeight: FontWeight.bold),
          ),
          elevation: 5,
        ),
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/t3.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3 + 29,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(-2, 2),
                                    blurRadius: 0.5)
                              ]),
                          child: Text(
                            'مع خدمات شكرا من فودافون،تقدر تتواصل مع عيلتك واحبابك ،حتي بعد نفاذ الرصيد',
                            maxLines: 3,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    MediaQuery.of(context).size.width / 22),
                          ),
                        )))
              ],
            ),
          ),
          Text(
            'دلوقتي تقدر تبعت كلمني شكرا لاي حد\nاختر الرقم',
            maxLines: 3,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: MediaQuery.of(context).size.width / 22),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'رقم الموبايل',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(15)),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 14,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.cyan,
            ),
            child: Center(
              child: Text(
                'ارسال',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: MediaQuery.of(context).size.width / 22),
              ),
            ),
          )
        ]));
  }
}
