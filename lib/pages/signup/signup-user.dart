import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupUserNameStep extends StatefulWidget {
  @override
  _SignupUserNameStepState createState() => _SignupUserNameStepState();
}

class _SignupUserNameStepState extends State<SignupUserNameStep> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController restrictionController = TextEditingController();
  final TextEditingController deficiencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: SvgPicture.asset("assets/images/logo.svg", width: 200),
              ),
              SizedBox(height: 60),

              // Título
              Container(
                width: 300,
                child: Text(
                  "Preencha as credenciais",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
              ),

              SizedBox(height: 15),

              // FORMULÁRIO
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),

                  // Nome de Usuário
                  Text(
                    "Nome de usuário*",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 350,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Este campo é obrigatório";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 20),

                  // Gênero
                  Text(
                    "Gênero*",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 350,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                     validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Este campo é obrigatório";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 20),
                  // Data de nascimento
                  Text(
                    "Data de nascimento*",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),

                  Container(
                    width: 350,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Este campo é obrigatório";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),

              // BOTÃO AVANÇAR → Restrição do Usuário
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(
                        context,
                        "/signup/user-restrictions-step",
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE21584),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0,
                  ),
                  child: Text("Avançar", style: TextStyle(fontSize: 18)),
                ),
              ),

              SizedBox(height: 20),

              // VOLTAR → Escolha do tipo de conta
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/signup/account-options-step");
                },
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Color(0xffE21584), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupUserRestrictionStep extends StatefulWidget {
  @override
  _SignupUserRestrictionStepState createState() =>
      _SignupUserRestrictionStepState();
}

class _SignupUserRestrictionStepState extends State<SignupUserRestrictionStep> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController restrictionController = TextEditingController();
  final TextEditingController deficiencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // <- FORM ADICIONADO
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
                  "Preencha as credenciais",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
              ),

              SizedBox(height: 40),

              // FORMULÁRIO
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Restrição
                  Text(
                    "Possui alguma restrição?*",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),

                  Container(
                    width: 350,
                    child: TextFormField(
                      controller: restrictionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Este campo é obrigatório";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 20),

                  // Deficiência
                  Text(
                    "Possui alguma deficiência?*",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),

                  Container(
                    width: 350,
                    child: TextFormField(
                      controller: deficiencyController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Este campo é obrigatório";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60),

              // BOTÃO AVANÇAR
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(
                        context,
                        "/signup/user-city-step",
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE21584),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0,
                  ),
                  child: Text("Avançar", style: TextStyle(fontSize: 18)),
                ),
              ),

              SizedBox(height: 20),

              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Color(0xffE21584), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupUserCityStep extends StatefulWidget {
  @override
  _SignupUserCityStepState createState() =>
      _SignupUserCityStepState();
}

class _SignupUserCityStepState extends State<SignupUserCityStep> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController restrictionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                  "Preencha as credenciais",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
              ),

              SizedBox(height: 40),

              // FORMULÁRIO
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Informe sua cidade*",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),

                  Container(
                    width: 350,
                    child: TextFormField(
                      controller: restrictionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Este campo é obrigatório";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),

              // BOTÃO AVANÇAR
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(
                        context,
                        "/signup/signup-user",
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE21584),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0,
                  ),
                  child: Text("Avançar", style: TextStyle(fontSize: 18)),
                ),
              ),

              SizedBox(height: 20),

              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Color(0xffE21584), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

