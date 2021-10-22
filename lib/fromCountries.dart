import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';

import 'constants/constant.dart';

class ListofCountries extends StatefulWidget {
  const ListofCountries({Key? key}) : super(key: key);

  @override
  _ListofCountriesState createState() => _ListofCountriesState();
}

class _ListofCountriesState extends State<ListofCountries> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border:
            Border.all(width: 1, color: mainYellow, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Icon(
          Icons.flight_takeoff_outlined,
          color: mainYellow,
        ),
        leading: CountryListPick(
          useSafeArea: false,
          useUiOverlay: true,
          theme: CountryTheme(
              // isShowFlag: true,
              // isShowTitle: true,
              // showEnglishName: true,
              // isShowCode: true,
              ),
        ),
      ),
    );
  }
}
