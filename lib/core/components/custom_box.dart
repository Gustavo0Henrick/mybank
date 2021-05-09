import 'package:flutter/material.dart';


class CustomBox extends StatelessWidget {
  final String txt;
  final Color color;
  final Color backgroundcolor;
  final Color bordercolor;
  final double height;
  final double width;
  final double font;
  final IconData icon;
  final Widget route;

  const CustomBox(
      {Key key,
      @required this.txt,
      this.color = Colors.white,
      this.height = 60,
      this.width = 60,
      this.font = 16,
      this.backgroundcolor = Colors.transparent,
      this.bordercolor = Colors.transparent,
      this.icon,
      this.route})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) => route));
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: bordercolor,
            width: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: Icon(
                icon,
                size: 36,
                color: color,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 10),
              child: Text(
                txt,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w400,
                  fontSize: font,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
