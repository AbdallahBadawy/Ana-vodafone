import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/EntertainmentScreen/NewsServices/Newsservices.dart';
import 'package:flutter/material.dart';

class EntertainmentMainScreen extends StatefulWidget {
  @override
  _EntertainmentMainScreenState createState() =>
      _EntertainmentMainScreenState();
}

class _EntertainmentMainScreenState extends State<EntertainmentMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('الترفية'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3 - 20,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://static.vodafone.com.eg/stellent/groups/public/documents/vfe_image/vf_067452.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              'خدمات الرسايل الاخبارية',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsServicesMainScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
