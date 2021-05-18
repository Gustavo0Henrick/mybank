import 'package:flutter/material.dart';
import 'package:mybank/core/images.dart';

class VirtualCard extends StatefulWidget {
  @override
  _VirtualCardState createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Cartão Virtual',
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
          Text(
            'Gerar Cartão Virtual',
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 24),
          ),
          Image.asset(
            MyBankImages.card,
            color: Colors.orange,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.12,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Text(
                    '4847 - 2129 - 0078 - 4782',
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Data de Validade: 08/28',
                        style: TextStyle(
                            color: color,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        'CVC: 987',
                        style: TextStyle(
                            color: color,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nome do Titular: ',
                        style: TextStyle(
                            color: color,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                      Text(
                        'Marcelo SIlva',
                        style: TextStyle(
                            color: color,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      elevation: 0,
                    ),
                    onPressed: () {
                      setState(() {
                        color = Colors.orange;
                      });
                    },
                    child: Text(
                      'Gerar',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[800],
                      elevation: 0,
                    ),
                    onPressed: () {
                      setState(() {
                        color = Colors.white;
                      });
                    },
                    child: Text(
                      'Apagar',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
