import 'package:flutter/material.dart';
import 'package:mybank/core/components/custom_textfield.dart';
import 'package:mybank/core/users.dart';
import 'package:mybank/ui/home_page.dart';

class Login extends StatefulWidget {
  bool switchValue = false;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color color = Colors.orange;
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'MyBank',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 36),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Text(
                          '* Dados Incorretos',
                          style: TextStyle(color: color),
                        ),
                      ),
                    ],
                  ),
                  CustomTextfield(
                    password: false,
                    color: Colors.orange,
                    controller: userController,
                    height: 45,
                    width: 350,
                    elevation: 5,
                    borderRadius: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40, top: 20),
                        child: Text(
                          'Senha',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Text(
                          '* Dados Incorretos',
                          style: TextStyle(color: color),
                        ),
                      ),
                    ],
                  ),
                  CustomTextfield(
                    password: true,
                    color: Colors.orange,
                    controller: passwordController,
                    height: 45,
                    width: 350,
                    elevation: 5,
                    borderRadius: 5,
                    obscureText: obscureText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lembrar de mim?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Switch(
                        value: widget.switchValue,
                        onChanged: (value) {
                          setState(() {
                            widget.switchValue = value;
                          });
                        },
                        activeTrackColor: Colors.white,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        primary: Colors.white,
                      ),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                        ),
                      ),
                      onPressed: () async {
                        String name = '';
                        String email = '';
                        bool found = false;
                        for (int i = 0; i < MyBankUser.user.length; i++) {
                          if (userController.text == MyBankUser.email[i] &&
                              passwordController.text ==
                                  MyBankUser.password[i]) {
                            found = true;
                            name = MyBankUser.user[i];
                            email = MyBankUser.email[i];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => HomePage(
                                          userName: name.toString(),
                                          userEmail: email.toString(),
                                        )));
                          } else if (userController.text ==
                                  MyBankUser.email[i] &&
                              passwordController.text !=
                                  MyBankUser.password[i]) {
                          } else {}
                        }
                        if (found == false) {
                          setState(() {
                            color = Colors.red[900];
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                    width: 120,
                    child: TextButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {},
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
