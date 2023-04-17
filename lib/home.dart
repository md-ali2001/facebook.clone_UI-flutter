import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.only(bottom: 415, left: 0),
        child: Container(
          child: Row(
            children: [
              Container(
                  height: 60,
                  width: 50,
                  child: IconButton(
                    icon: Icon(
                      Icons.person_pin,
                      size: 30,
                    ),
                    onPressed: () {},
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 5),
                child: Container(
                  height: 40,
                  width: 240,
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
              ),
            ],
          ),

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
        ));
  }
}
