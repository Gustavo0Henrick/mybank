import 'package:flutter/material.dart';
import 'package:mybank/core/components/block.dart';
import 'package:mybank/core/components/carousel.dart';
import 'package:mybank/core/components/custom_box.dart';
import 'package:mybank/core/components/dot_indicator.dart';
import 'package:mybank/core/components/drawer.dart';
import 'package:mybank/core/components/limit.dart';
import 'package:mybank/core/components/transaction.dart';
import 'package:mybank/core/components/virtual_card.dart';

class HomePage extends StatefulWidget {
  final String userName;
  final String userEmail;

  const HomePage({Key key, this.userName, this.userEmail}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        // automaticallyImplyLeading: false,

        centerTitle: true,
        elevation: 0,
        title: Text(
          'Olá, ${widget.userName}!',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      drawer: NavDrawer(
        name: widget.userName,
        email: widget.userEmail,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 350,
                  width: 350,
                  child: Carousel(
                    deposit: "150,00",
                    transaction: "320.00",
                    fatura: "1.420,78",
                    credit: "3.000,00",
                    saldo: "1.445,35",
                    onChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: DotIndicator(
                  currentIndex: currentIndex,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 65),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomBox(
                        route: Block(),
                        icon: Icons.lock_rounded,
                        backgroundcolor: Colors.white24,
                        color: Colors.white,
                        font: 12,
                        txt: 'Bloquear Cartão',
                        height: 80,
                        width: 75,
                      ),
                      CustomBox(
                        route: Limit(),
                        icon: Icons.tune,
                        font: 12,
                        backgroundcolor: Colors.white24,
                        color: Colors.white,
                        txt: 'Ajustar Limite',
                        height: 80,
                        width: 75,
                      ),
                      CustomBox(
                        route: VirtualCard(),
                        icon: Icons.credit_card,
                        font: 12,
                        backgroundcolor: Colors.white24,
                        color: Colors.white,
                        txt: 'Cartão Virtual',
                        height: 80,
                        width: 75,
                      ),
                      CustomBox(
                        route: Transaction(),
                        icon: Icons.attach_money,
                        font: 12,
                        backgroundcolor: Colors.white24,
                        color: Colors.white,
                        txt: 'Transferir - Depositar',
                        height: 80,
                        width: 75,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
