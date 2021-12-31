import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/onmybill/7awelohom_service.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/onmybill/Edf3lhom_Service.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/onmybill/Paypart.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/onmybill/helpedpart.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/onmybill/sa3edhom_service.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/onmybill/transformationpart.dart';
import 'package:flutter/material.dart';

class OnMyBillMainScreen extends StatefulWidget {
  @override
  _OnMyBillMainScreenState createState() => _OnMyBillMainScreenState();
}

class _OnMyBillMainScreenState extends State<OnMyBillMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('علي حسابي'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2 - 40,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4 - 10,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      image: DecorationImage(
                          image: AssetImage('assets/images/e3zm_logo.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: Row(
                      children: [
                        Text(
                          'خدمة علي حسابي',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: Row(
                      children: [
                        Text(
                          'علي حسابي بيقدملك اسرع واسهل خدمات لتحويل\n الرصيد ببلاش',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 21,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HawelohomScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 6,
                        child: TransformatinPart(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sa3edhomScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 6,
                        child: HelpedPart(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Edf3lohomScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 6,
                        child: PayPart(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
