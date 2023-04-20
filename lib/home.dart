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
      body: SingleChildScrollView(
        child: Column(
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

            Container(
              height: 36,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          height: 36,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.videocam,
                                  size: 25,
                                  color: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 4),
                                child: Text("Live",
                                    style: TextStyle(fontSize: 15)),
                              )
                            ],
                          ))),
                  Expanded(
                    child: Container(
                        height: 34,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              icon: Icon(
                                Icons.photo_album,
                                size: 25,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 4),
                              child:
                                  Text("Photo", style: TextStyle(fontSize: 15)),
                            )
                          ],
                        )),
                  ),
                  Container(
                    height: 34,
                    width: 145,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_on,
                            size: 25,
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
            ),
            Container(height: 9, color: Colors.black26),
            Container(height: 5, color: Colors.white),

            Container(
              height: 155,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mystory(),
                    Container(color: Colors.white, width: 5),
                    friendstory(
                        picture: 'assets/images/friendstory1.png',
                        name: "ali masood",
                        profpic: 'assets/images/friendstory2.png'),
                    Container(color: Colors.white, width: 5),
                    friendstory(
                        picture: 'assets/images/friendstory2.png',
                        name: "usman",
                        profpic: 'assets/images/friendstory3.png'),
                    Container(color: Colors.white, width: 5),
                    friendstory(
                        picture: 'assets/images/friendstory3.png',
                        name: "marium",
                        profpic: 'assets/images/friendstory1.png')
                  ],
                ),
              ),
            ),
            Container(height: 5, color: Colors.white),
            Container(height: 9, color: Colors.black26),
            friendpost(),
            //friendpost()
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
          ),
        ],
      ));
}

Widget friendpost() {
  return Column(
    children: [
      Row(
        children: [
          Container(
              height: 53,
              width: 58,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                          color: Colors.brown,
                          style: BorderStyle.solid,
                          width: 1.0),
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/friendpostprof1.png'),
                          fit: BoxFit.cover)),
                ),
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Container(
                  height: 23,
                  width: 240,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      "Chun Li",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Container(
                  height: 27,
                  width: 240,
                  child: Text(
                    "Yesterday at 11:35 AM , Karachi",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: 58,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          )
        ],
      ),
      Container(
        height: 450,
        width: 360,
        child: Image(
          image: AssetImage('assets/images/friendpostpic1.png'),
          fit: BoxFit.cover,
        ),
      ),
      Row(
        children: [
          Container(
              height: 35,
              width: 120,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.thumb_up,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: Text("Like", style: TextStyle(fontSize: 15)),
                  )
                ],
              )),
          Container(width: 120, height: 35, color: Colors.green),
          Container(width: 120, height: 35, color: Colors.yellow)
        ],
      ),
      Container(height: 35, color: Colors.red)
    ],
  );
}
