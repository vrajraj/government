import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'SectorIcon.dart';
//import 'customicon.dart';
import 'data.dart';

//------------------------------------------------------------------------------------------------------ //
// ->->->->->->->->->->->->->->->->->-> THIRD PAGE OF APPLICATION  ->->->->->->->->->->->->->->->->->->  //
// ----------------------------------------------------------------------------------------------------- //
class StartIntoApp extends StatefulWidget {
  @override
  _StartIntoAppState createState() => _StartIntoAppState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _StartIntoAppState extends State<StartIntoApp> {
  var currentPage = images.length - 1.0;
  var currentSector = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    PageController controller1 = PageController(initialPage: images.length - 1);
    controller1.addListener(() {
      setState(() {
        currentSector = controller1.page;
      });
    });

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black,size: 25),
        elevation: 0,
       // actions: <Widget>[IconButton(icon:Icon(Icons.search,color: Colors.black,size: 25,), onPressed: null)],
        backgroundColor      : Colors.white,centerTitle: true,
        title: Text('Budget', style: TextStyle(color: Colors.orange,fontSize: 25),),
      ),
      endDrawer:Drawer(
        child:Container() ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  IconButton(
//                    icon: Icon(
//                      Icons.drag_handle,
//                      color: Colors.black,
//                      size: 30.0,
//                    ),
//                    onPressed: () {},
//                  ),
//                  IconButton(
//                    icon: Icon(
//                      Icons.search,
//                      color: Colors.black,
//                      size: 30.0,
//                    ),
//                    onPressed: () {},
//                  ),
//                ],
//              ),
            ),

            // ======================== M I N I S T R I E S ====================== //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Our Ministries.",
                    style: new TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 30.0,
                      color: Colors.black,
                      fontFamily: "Calibre-Semibold",
                      //letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      size: 12.0,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange.shade500,
                      borderRadius: BorderRadius.circular(20.20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 10.0),
                        child: Text(
                          "Photos",
                          style: new TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "15 + Ministries ",
                    style: new TextStyle(
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                CardScrollWidget(currentPage),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: images.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                )
              ],
            ),
            new Container(
              // AFTER SCROLL CODE WRITE HERE //
              padding: EdgeInsets.symmetric(horizontal: 20.20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    " Overview.",
                    style: new TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 30.0,
                      color: Colors.black,
                      fontFamily: "Calibre-Semibold",
                      //letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: Image.asset(
                'images/pi_chart.png',
                scale: 0.8,
              ),
            ),
            //h-----------------------------//

            // ************ ADD NEW STACK LIST HERE after padding **********//

            // Top Schemes //
            new Container(
              padding: EdgeInsets.symmetric(horizontal: 20.20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    " Top Schemes.",
                    style: new TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 30.0,
                      color: Colors.black,
                      fontFamily: "Calibre-Semibold",
                      //letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),

            // ---------------> Card view for schemes with Expansion ListTile <------------------  //

                               // ***** ( 01 ) PM- Kisan aavas yojana *****  //
            new Container(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://1.bp.blogspot.com/-vfEgJzAtnCQ/XVG3tm_eH7I/AAAAAAAADfg/oGHQy7_wwG80FSqf017Xjj7xZetHpVJHACLcBGAs/s1600/pm-kisan-man-dhan-yojana.jpg"),
                          )
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("PM Awas Yojana",
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      children: <Widget>[
                        Text('The Pradhan Mantri Awas Yojana (PMAY) has been introduced by Prime Minister, Narendra Modi on 1 June 2015.\n'
                            'PMAY Scheme is an initiative provided by the Government of India which aims at providing affordable housing to the urban poor.\n '
                            'The mission is to provide housing for all by the year 2022, by that time Nation completes 75 years of its Independence.'),
                      ],
                    )
                  ],
                ),
              ),
            ),

                                      // ***** ( 02 ) Rashtriya Swasthya Bima Yojana ***** //
            new Container(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://images.mapsofindia.com/my-india/2016/08/rashtriya-swasthya-bima-yojana-rsby.jpg"),
                            )
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("Rashtriya Swasthya Bima Yojana",
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      children: <Widget>[
                        Text('The workers in the unorganized sector constitute about 93% of the total work force in the country. The Government \n'
                            'has been implementing some social security measures for certain occupational groups but the coverage is miniscule.\n '
                            'Majority of the workers are still without any social security coverage. One of the major \n'
                            'insecurities for workers in the unorganized sector is the frequent incidences of illness and need \n'
                            'for medical care and hospitalization of such workers and their family members. Despite the expansion in\n'
                            ' the health facilities, illness remains one of the most prevalent causes of human deprivation in India.\n'
                            ''),
                      ],
                    )
                  ],
                ),
              ),
            ),

                             // ***** ( 03 ) Solar Power  ***** //
            new Container(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("http://www.brightsolar.in/media/1691/rooftop-1-02.jpg"),
                            )
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("Solar Power",
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      children: <Widget>[
                        Text('In a major initiative, Govt.. of India, under the National Solar Mission has set a target of 1,00,000 MW power generation through'
                            'solar energy in the country including 40,000 MW to be contributed through solar rooftops in various sectors.\n'
                            'In order to achieve this magnitude of capacity, Gujarat has been given the target of 8,024 MW Capacity of \n'
                            'Solar Energy by 2021-22, out of which 3,200 MW is to be contributed by the rooftop segment.'),
                      ],
                    )
                  ],
                ),
              ),
            ),

                                      // ***** ( 04 ) PM Kisan Pension Yojana  ***** //
            new Container(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://hindijaankaari.in/wp-content/uploads/2019/08/pm-kisan-pension-yojana.jpg"),
                            )
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("PM Kisan Pension Yojana",
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      children: <Widget>[
                        Text('In addition to extending the benifits of Pradhan Mantri Kisan Samman Nidhi (PM-KISSAN) Yojana to all land holding eligible farmer familiesthe Central Government on 31 May 2019 approved a new pension cover for farmers in its first Cabinet meeting on forming the new government.\n'
                            'The Pradhan Mantri Kisan Mandhan Yojana will provide small and marginal farmers with a minimum fixed pension of Rs 3,000 per month on attaining the age of 60 years.'
                            ''),
                      ],
                    )
                  ],
                ),
              ),
            ),

                                         // ***** ( 05 ) Capital outlay of defence  ***** //
            new Container(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("http://im.rediff.com/news/2019/feb/01defence.jpg"),
                            )
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("Capital Outlay of Defence",
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      children: <Widget>[
                        Text('The defence budget remained unchanged at Rs 3.18 lakh crore, the amount set aside in the interim budget in February, notwithstanding expectations of steep hike in resources to modernise the armed forces and procure critical military platforms.\n'
                            'The allocation made in the UNION BUDGET is an increase of 6.87 per cent over revised estimates of Rs 2.98 lakh crore given in 2018-19.'
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

                                                // ***** ( 06 ) PM Gram Sadak Yajana  ***** //
            new Container(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://transformingindia.mygov.in/wp-content/uploads/2016/05/Info_Graphic_01-1.jpg"),
                            )
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("PM Gram Sadak Yajana",
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      children: <Widget>[
                        Text('The Pradhan Mantri Gram Sadak Yojana (PMGSY), was launched by the Govt. of India to provide connectivity to unconnected Habitations as part of a poverty reduction strategy.\n'
                            'Govt. of India is endeavoring to set high and uniform technical and management standards and facilitating policy development and planning at State level in order to ensure sustainable management of the rural roads network.\n'
                            'According to latest figures made available by the State Governments under a survey to identify Core Network as part of the PMGSY programme, about 1.67 lakh Unconnected Habitations are eligible for coverage under the programme. This involves construction of about 3.71 lakh km. of roads for New Connectivity and 3.68 lakh km. under upgradation.'
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
           // start something by here //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  // -----------   1) Back Button -----------/
                  new FlatButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Back",
                      style: new TextStyle(color: Colors.white),
                    ),
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.pop(context, '/Back');
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadiusDirectional.circular(20.0),
                    ),
                  ),

                  // -----------  2) Skip Button -------------/
                  new FlatButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Skip",
                      style: new TextStyle(color: Colors.white),
                    ),
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.pushNamed(context, '/Skip');
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadiusDirectional.circular(20.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// This Card scroll for Ministries //
class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(
        builder: (context, constrain) {
          var width = constrain.maxWidth;
          var height = constrain.maxHeight;

          var safeWidth = width - 2 * padding;
          var safeHeight = height - 2 * padding;

          var heightOfPrimaryCard = safeHeight;
          var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

          var primaryCardLeft = safeWidth - widthOfPrimaryCard;
          var horizontalInset = primaryCardLeft / 2;

          List<Widget> cardList = new List();

          for (var i = 0; i < images.length; i++) {
            var delta = i - currentPage;
            bool isOnRight = delta > 0;
            var start = padding +
                max(
                    primaryCardLeft -
                        horizontalInset * (-delta) * (isOnRight ? 15 : 1),
                    0.0);

            var cardItem = Positioned.directional(
              top: padding + verticalInset * max(-delta, 0.0),
              bottom: padding + verticalInset * max(-delta, 0.0),
              start: start,
              textDirection: TextDirection.rtl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(3.0, 6.0),
                        blurRadius: 20.0,
                      )
                    ],
                  ),
                  child: AspectRatio(
                    aspectRatio: cardAspectRatio,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset(
                          images[i],
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: Text(
                                  titles[i],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
            cardList.add(cardItem);
          }
          return Stack(
            children: cardList,
          );
        },
      ),
    );
  }
}

// // This Card scroll for Sectors //
//class CardScrollWidget1 extends StatelessWidget {
//  var currentSector;
//  var padding = 20.0;
//  var verticalInset = 20.0;
//
//  CardScrollWidget1(this.currentSector);
//
//  @override
//  Widget build(BuildContext context) {
//    return new AspectRatio(
//      aspectRatio: widgetAspectRatio,
//      child: LayoutBuilder(
//        builder: (context, constrain) {
//          var width = constrain.maxWidth;
//          var height = constrain.maxHeight;
//
//          var safeWidth = width - 2 * padding;
//          var safeHeight = height - 2 * padding;
//
//          var heightOfPrimaryCard = safeHeight;
//          var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;
//
//          var primaryCardLeft = safeWidth - widthOfPrimaryCard;
//          var horizontalInset = primaryCardLeft / 2;
//
//          List<Widget> cardList = new List();
//
//          for (var i = 0; i < images.length; i++) {
//            var delta = i - currentSector;
//            bool isOnRight = delta > 0;
//            var start = padding +
//                max(
//                    primaryCardLeft -
//                        horizontalInset * (-delta) * (isOnRight ? 15 : 1),
//                    0.0);
//
//            var cardItem = Positioned.directional(
//              top: padding + verticalInset * max(-delta, 0.0),
//              bottom: padding + verticalInset * max(-delta, 0.0),
//              start: start,
//              textDirection: TextDirection.rtl,
//              child: ClipRRect(
//                borderRadius: BorderRadius.circular(16.0),
//                child: Container(
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    boxShadow: [
//                      BoxShadow(
//                        color: Colors.black,
//                        offset: Offset(3.0, 6.0),
//                        blurRadius: 20.0,
//                      )
//                    ],
//                  ),
//                  child: AspectRatio(
//                    aspectRatio: cardAspectRatio,
//                    child: Stack(
//                      fit: StackFit.expand,
//                      children: <Widget>[
//                        Image.asset(
//                          imagesS[i],
//                          fit: BoxFit.cover,
//                        ),
//                        Align(
//                          alignment: Alignment.bottomLeft,
//                          child: Column(
//                            mainAxisSize: MainAxisSize.min,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              Padding(
//                                padding: EdgeInsets.symmetric(
//                                    horizontal: 16.0, vertical: 8.0),
//                                child: Text(
//                                  titlesS[i],
//                                  style: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 25.0,
//                                    fontWeight: FontWeight.bold,
//                                  ),
//                                ),
//                              ),
//                              SizedBox(height: 10.0),
//                              Container(
//                                padding: EdgeInsets.symmetric(
//                                    horizontal: 22.0, vertical: 6.0),
//                              ),
//                            ],
//                          ),
//                        )
//                      ],
//                    ),
//                  ),
//                ),
//              ),
//            );
//            cardList.add(cardItem);
//          }
//          return Stack(
//            children: cardList,
//          );
//        },
//      ),
//    );
//  }
