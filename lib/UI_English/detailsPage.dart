import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'SectorPage.dart';
import 'SelectionPage.dart';
import 'package:video_player/video_player.dart';




// --------------------- N E W  S T A R T S  F R O M  H E R E ---------------  //


class DetailsPage extends StatefulWidget {


  //VideoPlayerScreen({Key key}) : super(key: key);

  final heroTag;
  final sectorName;
  final sectorLeble;
  final Schemes;
  final sectorAmount;
  final Major;
  final Avail;
  final Selected;
  //final name;


  DetailsPage(
      {
        this.heroTag,
        this.sectorName,
        this.sectorLeble,
        this.Schemes,
        this.sectorAmount,
        this.Major,
        this.Avail,
        this.Selected

        // this.name,
      }
      );

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';

  // ---- FOR VIDEO PLAYER ------- //
  VideoPlayerController controller ;
  Future<void> futureController ;

  @override void initState(){
    controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    futureController = controller.initialize();
    controller.setLooping(true);
    controller.setVolume(25.0);
    super.initState();
  }

  @override void dispose(){
    controller.dispose();
    super.dispose();
  }
  // ----------------------- //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Details',
              style: TextStyle(
                //fontFamily: 'Montserrat',
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
              )
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height - 82.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent),
              Positioned(
                  top: 75.0,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.0),
                            topRight: Radius.circular(45.0),
                          ),
                          color: Colors.white),
                      height: MediaQuery.of(context).size.height - 100.0,
                      width: MediaQuery.of(context).size.width)),
              Positioned(
                  top: 30.0,
                  left: (MediaQuery.of(context).size.width / 2) - 100.0,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.heroTag),
                                  fit: BoxFit.contain
                              )
                          ),
                          height: 100.0,
                          width: 200.0
                      )
                  )
              ),
              // // //
              Positioned(
                top: 150.0,
                left: 25.0,
                right: 25.0,
                child: Container(
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.sectorName,
                          style: TextStyle(
                            //fontFamily: 'Montserrat',
                              fontSize:35.0,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(widget.sectorLeble,
                              style: TextStyle(
                                //fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  color: Colors.grey)),
                          Container(height: 25.0, color: Colors.grey, width: 1.0),


                          // Dont include //
                          // Container(
                          //   width: 125.0,
                          //   height: 40.0,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(27.0),
                          //       color: Color(0xFF7A9BEE)),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //     children: <Widget>[
                          //       InkWell(
                          //         onTap: () {},
                          //         child: Container(
                          //           height: 25.0,
                          //           width: 25.0,
                          //           decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(7.0),
                          //               color: Color(0xFF7A9BEE)),
                          //           child: Center(
                          //             child: Icon(
                          //               Icons.remove,
                          //               color: Colors.white,
                          //               size: 20.0,
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //       Text('2',
                          //           style: TextStyle(
                          //               color: Colors.white,
                          //               fontFamily: 'Montserrat',
                          //               fontSize: 15.0)),
                          //       InkWell(
                          //         onTap: () {},
                          //         child: Container(
                          //           height: 25.0,
                          //           width: 25.0,
                          //           decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(7.0),
                          //               color: Colors.white),
                          //           child: Center(
                          //             child: Icon(
                          //               Icons.add,
                          //               color: Color(0xFF7A9BEE),
                          //               size: 20.0,
                          //             ),
                          //           ),
                          //         ),
                          //       )
                          //     ],
                          //   ),
                          // )
                          new Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text( '',
                                  style: new TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      // make it static values //
                      SizedBox(height: 20.0),
                      Container(
                          height: 150.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              _buildInfoCard('Schemes', widget.Schemes, ''),
                              SizedBox(width: 10.0),
                              _buildInfoCard('Sector Amount', widget.sectorAmount , ''),
                              SizedBox(width: 10.0),
                              _buildInfoCard('Major', widget.Major, ''),
                              SizedBox(width: 10.0),
                              _buildInfoCard('AVAIL', widget.Avail, '')
                            ],
                          )
                      ),
                      SizedBox(height: 20.0),


                      // --------- Add new widgets from here in this container() ------------ //

                      new Container(
                        // -------- THIS IS  Video STARTS here //

                        child:
                        Stack(

                          children: <Widget>[
                            Card(
                              child:
                               FutureBuilder(
                                  future: futureController,
                                  builder: (context,snapshot){
                                    if(snapshot.connectionState == ConnectionState.done)
                                    {
                                      return AspectRatio(
                                          aspectRatio: controller.value.aspectRatio,
                                          child: VideoPlayer(controller)
                                      );
                                    }
                                    else{
                                      return Center(child: CircularProgressIndicator());
                                    }
                                  },
                                ),

                            ),
                            Center(
heightFactor: 5,
                              child: FloatingActionButton(
                                backgroundColor: Colors.orange,

                                onPressed: () {
                                  // Wrap the play or pause in a call to `setState`. This ensures the
                                  // correct icon is shown.
                                  setState(() {
                                    // If the video is playing, pause it.
                                    if (controller.value.isPlaying) {
                                      controller.pause();
                                    } else {
                                      // If the video is paused, play it.
                                      controller.play();
                                    }
                                  });
                                },
                                child: Icon(
                                  controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // --------------- THIS IS video CODING ENDS HERE -------------- //

                      // ------------  Parsing data from FIRESTORE -------------  //
                      // new Container(
                      //   child: StreamBuilder(
                      //     stream: Firestore.instance.collection('budget').snapshots(),
                      //     builder: (context, snapshot){
                      //       if(!snapshot.hasData) return const Text('Loading....');
                      //       return ListView.builder(
                      //         itemExtent: 80.0,
                      //         itemCount: snapshot.data.documents.length,
                      //         itemBuilder: (context ,index) => _buildListItem(context,snapshot.data.documents[index]),
                      //                           );
                      //                         },
                      //                       )
                      //                     ),



                    ],
                  ),
                ),
              )
            ],
          ),
        ] // <-----
        )
    );
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: cardTitle == selectedCard ? Color(0xFF7A9BEE) : Colors.white,
              border: Border.all(
                  color: cardTitle == selectedCard ?
                  Colors.transparent :
                  Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 0.75
              ),

            ),
            height: 100.0,
            width: 100.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(cardTitle,
                        style: TextStyle(
                          //fontFamily: 'Montserrat',
                          fontSize: 18.0,
                          color:
                          cardTitle == selectedCard ? Colors.white : Colors.grey,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(info,
                            style: TextStyle(
                              //fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                color: cardTitle == selectedCard
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(unit,
                            style: TextStyle(
                              // fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: cardTitle == selectedCard
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }

// _buildListItem(BuildContext context,DocumentSnapshot document) {
//   Container(
//     child: Card(
//       child : Column(
//         children: <Widget>[
//           Expanded(
//             child: Text(document['Name'],style: new TextStyle(),),
//             ),
//        ],
//       )
//     ),
//   );
// }
}

// new WIDGIT new //
