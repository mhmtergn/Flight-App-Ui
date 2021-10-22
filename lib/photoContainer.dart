import 'package:flutter/material.dart';

import 'constants/constant.dart';
import 'details/detail.dart';
import 'details/detailAntalya.dart';
import 'details/detailBarcelona.dart';
import 'details/detailLviv.dart';
import 'details/detailNemrut.dart';

class PhotoContainer extends StatelessWidget {
  const PhotoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailGate(imgPath: 'assets/images/goldenBridge.jpg')));
          },
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            // width: (MediaQuery.of(context).size.width / 2),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/images/goldenBridge.jpg"),
                  fit: BoxFit.cover),
            ),
            child: RichText(
              text: TextSpan(
                text: 'Golden Gate\nBridge\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: 'San Francisco, CA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: mainYellow),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailAntalya(imgPath: 'assets/images/antalya.jpg')));
          },
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            // width: ((MediaQuery.of(context).size.width - 50) / 2),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/images/antalya.jpg"),
                  fit: BoxFit.cover),
            ),
            child: RichText(
              text: TextSpan(
                text: 'Antalya\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Turkey',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: mainYellow),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailNemrut(imgPath: 'assets/images/nemrut.jpg')));
          },
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            // width: (MediaQuery.of(context).size.width / 2),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/images/nemrut.jpg"),
                  fit: BoxFit.cover),
            ),
            child: RichText(
              text: TextSpan(
                text: 'Nemrut\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Adiyaman, TR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: mainYellow),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailBarcelona(imgPath: 'assets/images/barcelona.jpg')));
          },
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            // width: (MediaQuery.of(context).size.width / 2),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/images/barcelona.jpg"),
                  fit: BoxFit.cover),
            ),
            child: RichText(
              text: TextSpan(
                text: 'Barcelona\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Spain',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: mainYellow),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailLviv(imgPath: 'assets/images/lviv.jpg')));
          },
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            // width: (MediaQuery.of(context).size.width / 2),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/images/lviv.jpg"),
                  fit: BoxFit.cover),
            ),
            child: RichText(
              text: TextSpan(
                text: 'Lviv\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Ukraine',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: mainYellow),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
