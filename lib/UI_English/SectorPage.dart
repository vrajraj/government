
//import 'dart:js';
//import 'dart:ui' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'detailsPage.dart';

class SectorPage extends StatefulWidget {
  @override
  _SectorPageState createState() => _SectorPageState();

}

class _SectorPageState extends State<SectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: new Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    children: <Widget>[],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sector ',
                  style: new TextStyle(
                    fontFamily: null,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Information',
                  style: new TextStyle(
                    fontFamily: null,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 35.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        _buildForSector(
                            'images/health.png', 'Health', 'sector','1','2','3','4'),
                        _buildForSector(
                            'images/truck.png', 'Transport', 'sector','5','6','7','8'),
                        _buildForSector(
                            'images/energy.png', 'Energy', 'sector','a','b','c','d'),
                        _buildForSector(
                            'images/education.png', 'Education', 'sector','e','f','g','h'),
                        _buildForSector(
                            'images/shield.png', 'Defence', 'sector','10','11','12','13'),
                        _buildForSector(
                            'images/finance.png', 'Finance', 'sector','15','16','17','18'),
                        _buildForSector(
                            'images/agriculture.png', 'Agriculture', 'sector','19','20','21','22'),
                        _buildForSector(
                            'images/factory.png', 'Industry', 'sector','34','56','67','89'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildForSector(String imgPath, String name, String label,String schemes,String sa,String major,String avail) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    heroTag: imgPath,
                    sectorName: name,
                    sectorLeble: label,
                    Schemes: schemes,
                    sectorAmount: sa,
                    Major: major,
                    Avail: avail,
                  )
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath,
                              child: Image(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name,
                                    style: TextStyle(
                                      // fontFamily: 'Montserrat',
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                    )
                                ),
                                Text(
                                    label,
                                    style: TextStyle(
                                      //fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        color: Colors.grey.shade500
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.navigate_next),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        )
    );
  }
}