import 'package:flutter/material.dart';
import 'package:mybank/core/components/custom_card.dart';

class Carousel extends StatefulWidget {
  ValueChanged<int> onChanged;
  final String saldo;
  final String credit;
  final String fatura;
  final String transaction;
  final String deposit;

  Carousel(
      {Key key,
      this.onChanged,
      this.saldo,
      this.credit,
      this.fatura,
      this.transaction,
      this.deposit})
      : super(key: key);
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: widget.onChanged,
      physics: BouncingScrollPhysics(),
      children: [
        CustomCard(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.monetization_on_rounded,
                    color: Colors.black45,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Conta',
                    style: TextStyle(color: Colors.black45, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Saldo Disponível',
                    style: TextStyle(color: Colors.black45, fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'R\$ ${widget.saldo}',
                    style: TextStyle(color: Colors.green, fontSize: 27),
                  ),
                ],
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
        CustomCard(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.credit_card,
                    color: Colors.black45,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Cartão de Crédito',
                    style: TextStyle(color: Colors.black45, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Limite Disponível',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'R\$ ${widget.credit}',
                    style: TextStyle(color: Colors.blue, fontSize: 27),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Fatura Atual',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'R\$ ${widget.fatura}',
                    style: TextStyle(color: Colors.red, fontSize: 27),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomCard(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.compare_arrows,
                    color: Colors.black45,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Movimentações',
                    style: TextStyle(color: Colors.black45, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Últimas Transação',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    '- R\$ ${widget.transaction}',
                    style: TextStyle(color: Colors.red, fontSize: 27),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Último Depósito',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    '+ R\$ ${widget.deposit}',
                    style: TextStyle(color: Colors.green, fontSize: 27),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
