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
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mystory(),
                    friendstory(
                        picture: 'assets/images/friendstory1.png',
                        name: "ali masood",
                        profpic: 'assets/images/friendstory2.png'),
                    friendstory(
                        picture: 'assets/images/friendstory2.png',
                        name: "usman",
                        profpic: 'assets/images/friendstory3.png'),
                    friendstory(
                        picture: 'assets/images/friendstory3.png',
                        name: "marium",
                        profpic: 'assets/images/friendstory1.png')
                  ],
                ),
              ),
            ),
          ),
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

Widget mystory() {
  return Container(
      width: 120,
      height: double.infinity,
      color: Colors.black12,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/mystory.png'),
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle, color: Colors.white, size: 40),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add to story", style: TextStyle(color: Colors.white))
            ],
          ),
        ],
      ));
}

Widget friendstory({picture, name, profpic}) {
  return Container(
      width: 120,
      height: double.infinity,
      color: Colors.black12,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage(picture),
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(name, style: TextStyle(color: Colors.white))],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                            color: Colors.blue,
                            style: BorderStyle.solid,
                            width: 2.0),
                        image: DecorationImage(
                            image: AssetImage(profpic), fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          )
        ],
      ));
}
