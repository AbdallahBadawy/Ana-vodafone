import 'package:flutter/material.dart';

class MoreServicesCard extends StatelessWidget {
  final String name;
  final Function OnPress;

  // ignore: non_constant_identifier_names
  MoreServicesCard({this.name, this.OnPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 20),
          child: InkWell(
            onTap: OnPress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.redAccent,
                    ),
                    onPressed: null),
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 22),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          indent: 10,
          endIndent: 10,
          thickness: 0.5,
        )
      ],
    );
  }
}
