import 'package:flutter/material.dart';

class Limit extends StatefulWidget {
  @override
  _LimitState createState() => _LimitState();
}

class _LimitState extends State<Limit> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    String valueString = value.toStringAsFixed(2);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.orange,
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Ajustar Limite',
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Defina o Limite de Crédito',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Slider(
              divisions: 10,
              min: 0,
              max: 3000,
              value: value,
              onChanged: (double newValue) {
                setState(() {
                  value = newValue;
                });
              }),
          Text(
            ' R\$ $valueString',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
              ),
              onPressed: () {},
              child: Text(
                'Definir',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ))
        ],
      ),
    );
  }
}
