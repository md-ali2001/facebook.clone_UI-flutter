import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(children: [
            IconButton(
              icon: Icon(
                Icons.person_pin,
                size: 30,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, top: 3),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  side: BorderSide(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "What's on your mind?       ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ]),
          Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.videocam,
                              size: 30,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Text("Live", style: TextStyle(fontSize: 15)),
                          )
                        ],
                      ))),
              Expanded(
                child: Container(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.photo_album,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Text("Photo", style: TextStyle(fontSize: 15)),
                        )
                      ],
                    )),
              ),
              Container(
                height: 45,
                width: 145,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on,
                        size: 30,
                        color: Colors.pink,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        "Check in",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(height: 10, color: Colors.black26),
          Expanded(child: Container()),
          Container(height: 10, color: Colors.black26),
          Expanded(child: Container())
        ],

        //   child: ListView(
        // children: <Widget>[
        //   Row(children: <Widget>[
        //     Container(
        //       width: 360,
        //       height: 60,
        //       child: Row(
        //         children: <Widget>[
        //           Column(
        //             children: <Widget>[
        //               IconButton(
        //                 icon: Icon(
        //                   Icons.person_pin,
        //                   size: 30,
        //                 ),
        //                 onPressed: () {},
        //               )
        //             ],
        //           ),
        //           Column(
        //             children: <Widget>[
        //               Padding(
        //                 padding: const EdgeInsets.only(left: 10, top: 2),
        //                 child: OutlinedButton(
        //                   style: OutlinedButton.styleFrom(
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(60)),
        //                     side: BorderSide(
        //                       width: 1,
        //                       color: Colors.black,
        //                     ),
        //                   ),
        //                   onPressed: () {},
        //                   child: Text(
        //                     "What's on your mind?       ",
        //                     style: TextStyle(color: Colors.grey),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //   ]),
        //   Divider(color: Colors.black)
        // ],
      ),
    );
  }
}
