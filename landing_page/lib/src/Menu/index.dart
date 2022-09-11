import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // ignore: non_constant_identifier_names
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
            onTap: () => {Navigator.pop(context)},
            child: SvgPicture.asset("lib/src/Menu/assets/icon-close.svg"),
          )
        ]);
  }

  Widget _MenuContent(txt, mobHei) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        txt,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double mobHei = MediaQuery.of(context).size.height;
    double mobWid = MediaQuery.of(context).size.width;

    return Material(
        color: Colors.black,
        child: Container(
          padding: EdgeInsets.only(
              top: mobHei / 15, left: mobWid / 20, right: mobWid / 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _Header(),
            SizedBox(height: mobHei / 4.5),
            _MenuContent("ABOUT", mobHei),
            _MenuContent("CAREERS", mobHei),
            _MenuContent("EVENTS", mobHei),
            _MenuContent("PRODUCTS", mobHei),
            _MenuContent("SUPPORT", mobHei),

            // const Text(
            //   "ABOUT",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 30,
            //     fontWeight: FontWeight.w200,
            //   ),
            // ),
          ]),
        ));
  }
}
