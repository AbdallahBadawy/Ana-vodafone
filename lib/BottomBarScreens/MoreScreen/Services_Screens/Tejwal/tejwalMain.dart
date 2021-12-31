import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/rechargethebalance/rechargethebalance.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Services_Screens/Tejwal/TejwalServices/tejwal_advices.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Services_Screens/Tejwal/countriesList.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Services_Screens/Tejwal/tegwalList.dart';
import 'package:flutter/material.dart';

import 'TejwalServices/shokranService.dart';

class TejwaMainScreen extends StatefulWidget {
  @override
  _TejwaMainScreenState createState() => _TejwaMainScreenState();
}

class _TejwaMainScreenState extends State<TejwaMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'التجوال',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Cairo',
              fontSize: MediaQuery.of(context).size.width / 18,
              fontWeight: FontWeight.bold),
        ),
        elevation: 5,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/t1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  ),
                  Positioned(
                    bottom: 110,
                    right: 30,
                    child: Text(
                      'باقات التجوال',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: MediaQuery.of(context).size.width / 14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 50,
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
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CountreiesList()));
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'من فضلك ادخل جهة السفر',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'يمكنك ايضا...',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: MediaQuery.of(context).size.width / 15),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-2, 2),
                      spreadRadius: 0.4,
                      blurRadius: 0.5),
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.4,
                      offset: Offset(2, -2),
                      blurRadius: 0.5)
                ]),
            child: Column(
              children: [
                TejwalList(
                    image: 'assets/images/ttt1.jpg',
                    title: 'تواصل بسهولة مع احبابك \nمن خلال كلمني شكرا',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SHokranServiceScreen()));
                    }),
                Divider(
                  thickness: 0.5,
                  color: Colors.blue,
                  indent: 15,
                  endIndent: 15,
                ),
                TejwalList(
                  image: 'assets/images/travel2.jpg',
                  title: 'الشحن اثناء السفر',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RechargeTheBalance()));
                  },
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.blue,
                  indent: 15,
                  endIndent: 15,
                ),
                TejwalList(
                  image: 'assets/images/travel3.jpg',
                  title: 'تصفح نصائح هامة للتجوال',
                   onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TejwalAdvices()));
                  },
                 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
