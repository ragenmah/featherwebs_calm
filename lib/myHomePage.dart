import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            welcome(),
            stats(),
            continueImage(),
            popularCourses(),
            recommended()
          ],
        ),
      ),
    );
  }
}

Widget welcome() {
  return Stack(
    children: <Widget>[
      Container(
        height: 170,
        // padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Hexcolor("#e6a939"),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(17.0),
            bottomRight: Radius.circular(17.0),
          ),
        ),
        // child:
      ),
      new Positioned(
        child: Container(
          width: 160,
          height: 160,
          decoration: new BoxDecoration(
            color: Hexcolor("#f2c061"),
            shape: BoxShape.circle,
          ),
        ),
        top: 10.0,
        left: 150.0,
      ),
      Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welcome, Nitima',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.0),
                Text(
                  '23 March, 2020',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    ],
  );
}

Widget stats() {
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Your Stats",
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  statsCard("Average Duration", 16, "duration"),
                  statsCard("Total Sessions", 5, "sessions"),
                  statsCard("Events Attended", 2, "events"),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget statsCard(String title, int time, String type) {
  return Container(
    // color: Hexcolor("#e6a939"),
    height: 90,
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
      color: Hexcolor("#e6a939"),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              // fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          type == "duration"
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      time.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "min",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                )
              : Text(
                  time.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                )
        ],
      ),
    ),
    // child: Card(
    //   color: Hexcolor("#e6a939"),
    //   elevation: 0,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15.0),
    //   ),
    //   child:
  );
}

Widget continueImage() {
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Continue the session",
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: showImageWithText(),
          ),
        ],
      ),
    ),
  );
}

Widget showImageWithText() {
  return Flexible(
    child: Container(
      padding: EdgeInsets.all(1),
      height: 200,
      width: double.infinity,
      child: Card(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   // padding: const EdgeInsets.all(10.0),
        // ),
        elevation: 0,
        child: GridTile(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/yoga.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          footer: Container(
            height: 80,
            // padding: const EdgeInsets.all(8.0),
            // margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Morning Routine",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                  // SizedBox(height: 10.0),
                  Text(
                    "10 mins",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                  LinearPercentIndicator(
                    // width: double.infinity,
                    width: 290,
                    lineHeight: 5.0,
                    percent: 0.8,
                    progressColor: Colors.white,
                    padding: EdgeInsets.only(left: 5, right: 10),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget popularCourses() {
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Popular Courses",
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Expanded(child: listAllItems()),
          ),
        ],
      ),
    ),
  );
}

List<String> listOfObjects = [
  'assets/courses/courses1.jpg',
  'assets/courses/courses2.jpg',
  'assets/courses/courses3.jpg',
];
Widget listAllItems() {
  return SizedBox(
    height: 200.0,
    child: ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      // padding: const EdgeInsets.all(8.0),
      itemCount: listOfObjects.length,
      itemBuilder: (context, index) {
        return Container(
          // padding: EdgeInsets.all(1),
          height: 200,
          width: 160,
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            //   // padding: const EdgeInsets.all(10.0),
            // ),
            elevation: 0,
            child: GridTile(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(listOfObjects[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              footer: Container(
                height: 60,
                // padding: const EdgeInsets.all(8.0),
                // margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Mindfulness 1.0",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),

                        // textAlign: TextAlign.left,
                      ),
                      Text(
                        "10-20 mins",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

List<String> listOfRecom = [
  'assets/recommended/recom1.jpg',
  'assets/recommended/recom2.jpg',
];
List<String> titles = ["Intro to Mindfulnes", "Managing Anxiety"];
Widget recommended() {
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Recommended",
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: listAllRecomItems(),
          ),
        ],
      ),
    ),
  );
}

Widget listAllRecomItems() {
  return ListView.builder(
    physics: ClampingScrollPhysics(),
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    // padding: const EdgeInsets.all(8.0),
    itemCount: listOfRecom.length,
    itemBuilder: (context, index) {
      return Card(
        elevation: 5,
        child: ListTile(
          title: Text(
            titles[index],
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          subtitle: Text("10-20 mins"),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(listOfRecom[index]),
                fit: BoxFit.fill,
              ),
            ),
            // child: Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Image.asset(
            //     listOfRecom[index],
            //     fit: BoxFit.fill,
            //   ),
            // ),
          ),
          trailing: CircleAvatar(
              radius: 15,
              backgroundColor: Hexcolor("#e6a939"),
              child: Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 17,
              )),
        ),
      );
    },
  );
}
