import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController controller;
  final double elevation;
  final double height;
  final double width;
  bool obscureText;
  final double borderRadius;
  final Color color;
  bool password;
  

  CustomTextfield(
      {Key key,
      this.controller,
      this.elevation = 0,
      @required this.height,
      @required this.width,
      this.obscureText = false,
      this.borderRadius = 0,
      this.color,
      this.password = false,
      
      })
      : super(key: key);

  @override
  _CustomTextfieldState createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Card(
        elevation: widget.elevation,
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 7),
          child: TextFormField(
            cursorHeight: 25,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              suffixIcon: widget.password
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          widget.obscureText = !widget.obscureText;
                        });
                      },
                      icon: widget.obscureText
                          ? Icon(
                              Icons.visibility,
                              color: widget.color,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: widget.color,
                            ),
                    )
                  : Icon(
                      Icons.account_box,
                      color: Colors.white,
                    ),
              border: InputBorder.none,
            ),
            controller: widget.controller,
          ),
        ),
      ),
    );
  }
}
