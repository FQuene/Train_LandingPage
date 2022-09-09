import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  State<FooterPage> createState() => _FooterPage();
}

class _FooterPage extends State<FooterPage> {
  Widget _foorterContent(mobWid, txt) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: mobWid / 20,
            fontWeight: FontWeight.w500,
          )),
    );
  }

  Container _socialList(mobWid) {
    const String facebookAsset = "lib/src/Footer/assets/icon-facebook.svg";
    const String twitterAsset = "lib/src/Footer/assets/icon-twitter.svg";
    const String pinterestAsset = "lib/src/Footer/assets/icon-pinterest.svg";
    const String instagramAsset = "lib/src/Footer/assets/icon-instagram.svg";

    return Container(
      padding: const EdgeInsets.only(top: 30),
      width: mobWid / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(facebookAsset),
          SvgPicture.asset(twitterAsset),
          SvgPicture.asset(pinterestAsset),
          SvgPicture.asset(instagramAsset),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double mobHei = MediaQuery.of(context).size.height;
    double mobWid = MediaQuery.of(context).size.width;

    return Container(
      width: mobWid,
      color: Colors.black,
      padding: EdgeInsets.only(top: mobHei / 15, left: 20, right: 20),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(bottom: 70),
          child: Text("loopstudios",
              style: TextStyle(
                color: Colors.white,
                fontSize: mobWid / 15,
                fontWeight: FontWeight.bold,
              )),
        ),
        _foorterContent(mobWid, "About"),
        _foorterContent(mobWid, "Careers"),
        _foorterContent(mobWid, "Events"),
        _foorterContent(mobWid, "Products"),
        _foorterContent(mobWid, "Support"),
        _socialList(mobWid),
        Container(
          padding: EdgeInsets.only(top: 30, bottom: 40),
          child: Text(
            "© 2021 Loopstudios. All rights reserved.",
            style:
                TextStyle(color: Colors.white30, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
