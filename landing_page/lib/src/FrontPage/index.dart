import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontState();
}

class _FrontState extends State<FrontPage> {
  Row _Header() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("LoopStudios",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          GestureDetector(
            onTap: () => {print("oui")},
            child:
                SvgPicture.asset("lib/src/FrontPage/assets/icon-hamburger.svg"),
          )
        ]);
  }

  Container _TextElem() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 2)), //             <--- BoxDecoration here
      child: Container(
        padding: EdgeInsets.only(),
        child: const Text('''IMMERSIVE 
EXPERIENCES
THAT
DELIVER''',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w200,
            )),
      ),
    );
  }

  Widget _HeadPage(mobHei, mobWid) {
    return Container(
        height: mobHei,
        width: mobWid,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "lib/src/FrontPage/assets/image-hero.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: mobHei / 15, left: mobWid / 20, right: mobWid / 20),
          child: Column(
            children: [
              _Header(),
              SizedBox(height: mobHei / 6),
              _TextElem(),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double mobHei = MediaQuery.of(context).size.height;
    double mobWid = MediaQuery.of(context).size.width;

    return Column(
      children: [
        _HeadPage(mobHei, mobWid),
      ],
    );
  }
}
