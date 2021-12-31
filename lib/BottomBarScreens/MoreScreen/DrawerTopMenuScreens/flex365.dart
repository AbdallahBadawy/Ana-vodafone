import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/moreScreen.dart';
import 'package:flutter/material.dart';

class Flex365Screen extends StatefulWidget {
  @override
  _Flex365ScreenState createState() => _Flex365ScreenState();
}

class _Flex365ScreenState extends State<Flex365Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/flex365.jpg',
              ),
              fit: BoxFit.cover,
            )),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.5).withBlue(50),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MoreScreen()));
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 55,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'عروض 365',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: MediaQuery.of(context).size.width / 10),
                  ),
                  Text(
                    '..اهلا بيك في عالم عروض فليكس ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: MediaQuery.of(context).size.width / 20),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromRGBO(255, 0, 0, 1),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [])),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'العب واكسب ',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontSize:
                                    MediaQuery.of(context).size.width / 10),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          indent: 25,
                          endIndent: 25,
                          thickness: 1.5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
