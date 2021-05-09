import 'package:flutter/material.dart';
import 'package:mybank/core/images.dart';

class Block extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Bloquear Cartão',
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.orange,
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            MyBankImages.card,
            color: Colors.orange,
          ),
          Text(
            'XXXX-XXXX-XXXX-4782',
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red[700],
                elevation: 5,
              ),
              onPressed: () {},
              child: Text(
                'Bloquear',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
