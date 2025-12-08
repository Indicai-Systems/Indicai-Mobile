import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupEmailStep extends StatefulWidget {
  @override
  _SignupEmailStepState createState() => _SignupEmailStepState();
}

class _SignupEmailStepState extends State<SignupEmailStep> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: SvgPicture.asset("assets/images/logo.svg", width: 200),
            ),
            SizedBox(height: 60),
            Container(
              width: 300,
              child: Text(
                "Bem-vindo!\n Crie sua conta",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Preencha as credenciais",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.grey[800]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        "Informe seu e-mail",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),

                    Container(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
            SizedBox(height: 60),
            Center(
              child: Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup/password-step");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE21584), // Cor de fundo
                    foregroundColor: Colors.white, // Cor do texto/ícone
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      // Borda arredondada
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0, // Sombra
                  ),
                  child: Text(
                    "Continuar com o e-mail",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text(
                "Já possui uma conta? Inicie sessão",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffE21584), fontSize: 16),
              ),
            ),
            SizedBox(height: 50),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 1,
                    color: Colors.grey,
                    margin: EdgeInsets.symmetric(vertical: 8),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "  Ou  ",
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 1,
                    color: Colors.grey,
                    margin: EdgeInsets.symmetric(vertical: 8),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Cor de fundo
                  foregroundColor: Colors.black, // Cor do texto/ícone
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    // Borda arredondada
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.grey[200]!, width: 1),
                  ),
                  elevation: 0, // Sombra
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("assets/icons/google-icon.svg", width: 20),
                    SizedBox(width: 10),
                    Text(
                      "Registrar-se com o Google",
                      style: TextStyle(fontSize: 18, color: Colors.grey[700]!),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupPasswordStep extends StatefulWidget {
  @override
  _SignupPasswordStepState createState() => _SignupPasswordStepState();
}

class _SignupPasswordStepState extends State<SignupPasswordStep> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: SvgPicture.asset("assets/images/logo.svg", width: 200),
            ),
            SizedBox(height: 60),
            Container(
              width: 300,
              child: Text(
                "Bem-vindo!\n Crie sua conta",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Preencha as credenciais",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.grey[800]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        "Crie uma senha",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),

                    Container(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        "Confirme sua senha",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),

                    Container(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            Center(
              child: Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/signup/account-options-step",
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE21584), // Cor de fundo
                    foregroundColor: Colors.white, // Cor do texto/ícone
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      // Borda arredondada
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0, // Sombra
                  ),
                  child: Text("Avançar", style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/signup/email-step");
              },
              child: Text(
                "Voltar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffE21584), // Cor de fundo
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupAccountOptionsStep extends StatefulWidget {
  @override
  _SignupAccountOptionsStepState createState() =>
      _SignupAccountOptionsStepState();
}

class _SignupAccountOptionsStepState extends State<SignupAccountOptionsStep> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: SvgPicture.asset("assets/images/logo.svg", width: 200),
            ),
            SizedBox(height: 60),
            Container(
              width: 300,
              child: Text(
                "Escolha o tipo de conta:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/signup/signup-user");
                      },
                      child: Container(
                        width: 400,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: SvgPicture.asset(
                                "assets/icons/user-orange.svg",
                              ),
                            ),
                            Text(
                              "Conta de Pessoa Física",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff525252),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/signup/vendor-name-step",
                        );
                      },

                      child: Container(
                        width: 400,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: SvgPicture.asset(
                                "assets/icons/local-orange.svg",
                              ),
                            ),
                            Text(
                              "Conta de Estabelecimento",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff525252),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 120),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/signup/password-step");
              },
              child: Text(
                "Voltar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffE21584), // Cor de fundo
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
