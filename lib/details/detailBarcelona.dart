import 'package:beginner_ui/constants/constant.dart';
import '../main.dart';
import 'package:flutter/material.dart';

class DetailBarcelona extends StatefulWidget {
  var imgPath;

  DetailBarcelona({this.imgPath});

  @override
  _DetailBarcelonaState createState() => _DetailBarcelonaState();
}

class _DetailBarcelonaState extends State<DetailBarcelona> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/barcelona.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Barcelona',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Spain',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: mainYellow),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Text(
                      "Barcelona is a city on the coast of northeastern Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second most populous municipality of Spain. With a population of 1.6 million within city limits,[7] its urban area extends to numerous neighbouring municipalities within the Province of Barcelona and is home to around 4.8 million people,[3] making it the fifth "
                      "most populous urban area in the European Union after Paris, the Ruhr area, Madrid, and Milan.",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Wiew Comments',
                          style: TextStyle(color: mainYellow, fontSize: 14),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(mainYellow),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Find a Ticket',
                              style: TextStyle(fontSize: 14),
                            )),
                      )
                    ],
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
