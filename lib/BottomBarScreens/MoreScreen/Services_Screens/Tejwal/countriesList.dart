import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';

class CountreiesList extends StatefulWidget {
  @override
  _CountreiesListState createState() => _CountreiesListState();
}

class _CountreiesListState extends State<CountreiesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Text('اختر جهة السفر'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [],
              )),
          child: CountryListPick(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: Text('اختر جهة السفر'),
            ),
            theme: CountryTheme(
              isShowFlag: true,
              isShowTitle: true,
              isShowCode: true,
              isDownIcon: true,
              showEnglishName: true,
            ),
            initialSelection: '+20',
            onChanged: (CountryCode code) {
              print(code.name);
              print(code.code);
              print(code.dialCode);
              print(code.flagUri);
            },
          ),
        ),
      ),
    );
  }
}
