import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentState();
}

class _ContentState extends State<ContentPage> {
  Column _contentPart(mobHei, mobWid) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: const Image(
              image:
                  AssetImage("lib/src/Content/assets/image-interactive.jpg")),
        ),
        Container(
          padding: EdgeInsets.only(top: mobHei / 15, left: 20, right: 20),
          child: const Center(
              child: Text(
            "THE LEADER IN \nINTERACTIVE VR",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.w200,
            ),
          )),
        ),
        Container(
          padding: EdgeInsets.only(top: mobHei / 20, left: 20, right: 20),
          child: const Center(
              child: Text(
            "Founded in 2011, Loopstudios has been producing world-class virtual reality projects for some of the best companies around the globe. Our award-winning creations have transformed businesses through digital experiences that bind to their brand.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w700,
              height: 2,
            ),
          )),
        ),
      ],
    );
  }

  Widget _allCreation(bgPath, txtTitle) {
    return Container(
        width: 327,
        height: 120,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.black,
            //     spreadRadius: -15,
            //     blurRadius: 10,
            //     offset: Offset(-20, 20), // changes position of shadow
            //   ),
            // ],
            image: DecorationImage(
          image: AssetImage(bgPath),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          child: Text(
            txtTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w200,
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double mobHei = MediaQuery.of(context).size.height;
    double mobWid = MediaQuery.of(context).size.width;

    return Container(
      width: mobWid,
      color: Colors.white10,
      padding: EdgeInsets.only(top: mobHei / 10, left: 20, right: 20),
      child: Column(
        children: [
          _contentPart(mobHei, mobWid),
          SizedBox(height: mobHei / 12),
          const Text(
            "OUR CREATIONS",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(height: mobHei / 25),
          _allCreation(
              "lib/src/Content/assets/image-deep-earth.jpg", "DEEP\nEARTH"),
          _allCreation(
              "lib/src/Content/assets/image-night-arcade.jpg", "NIGHT\nARCADE"),
          _allCreation("lib/src/Content/assets/image-soccer-team.jpg",
              "SOCCER\nTEAM VR"),
          _allCreation("lib/src/Content/assets/image-grid.jpg", "THE\nGRID"),
          _allCreation("lib/src/Content/assets/image-from-above.jpg",
              "FROM UP\nABOVE VR"),
          _allCreation("lib/src/Content/assets/image-pocket-borealis.jpg",
              "POCKET\nBOREALIS"),
          _allCreation(
              "lib/src/Content/assets/image-curiosity.jpg", "THE\nCURIOSITY"),
          _allCreation(
              "lib/src/Content/assets/image-fisheye.jpg", "MAKE IT\nFISHEYE"),
          SizedBox(height: mobHei / 20),
          Container(
            width: mobWid / 2.5,
            height: mobHei / 15,
            margin: EdgeInsets.only(bottom: mobHei / 20),
            child: OutlinedButton(
              onPressed: () {
                debugPrint('Received click');
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1.0, color: Colors.black),
              ),
              child: const Text("SEE ALL",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
