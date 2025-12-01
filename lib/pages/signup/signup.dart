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
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 300,
             child:
             Text(
               "Bem-vindo!\n Crie sua conta", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Text(
             "Preencha as credenciais",
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 20,
               color: Colors.grey[800],
             ),
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 40),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Informe seu e-mail",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                   Navigator.pushNamed(context, "/signup/password-step");
                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Continuar com o e-mail",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, "/login");
             },
             child:Text(
              "Já possui uma conta? Inicie sessão",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

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
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 300,
             child:
             Text(
               "Bem-vindo!\n Crie sua conta", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Text(
             "Preencha as credenciais",
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 20,
               color: Colors.grey[800],
             ),
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 40),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Crie uma senha",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Confirme sua senha",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "/signup/account-options-step");

                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Avançar",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, "/signup/email-step");
             },
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 
class SignupAccountOptionsStep extends StatefulWidget {
  @override
  _SignupAccountOptionsStepState createState() => _SignupAccountOptionsStepState();
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
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 300,
             child:
             Text(
               "Escolha o tipo de conta:", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w800,
                 ),
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
  
                    child:Container(
                      width: 400,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: SvgPicture.asset("assets/icons/user-orange.svg"),
                          ),
                          Text(
                            "Conta de Pessoa Física",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff525252),
                            ),
                          ),
                          Icon( 
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),      
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/signup/vendor-name-step");
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
                           child: SvgPicture.asset("assets/icons/local-orange.svg"),
                         ),
                         Text(
                           "Conta de Estabelecimento",
                           style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff525252),
                           ),
                         ),
                         Icon( 
                           Icons.arrow_forward_ios,
                           color: Colors.grey,
                         ),
                       ],
                     ),
                   ) ,
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
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 
class SignupVendorNameStep extends StatefulWidget {
  @override
  _SignupVendorNameStepState createState() => _SignupVendorNameStepState();
}

class _SignupVendorNameStepState extends State<SignupVendorNameStep> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 300,
             child:
             Text(
               "Preencha as credenciais", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 40),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Nome do Estabelecimento",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Telefone de Contato",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "CNPJ",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "/signup/vendor-specialties-step");

                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Avançar",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, "/signup/account-options-step");
             },
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 

class SignupVendorSpecialtiesStep extends StatefulWidget {
  @override
  _SignupVendorSpecialtiesStepState createState() => _SignupVendorSpecialtiesStepState();
}

class _SignupVendorSpecialtiesStepState extends State<SignupVendorSpecialtiesStep> {
  List<String> categorias = ["Opção 1", "Opção 2", "Opção 3"];
  String? categoriaSelecionada;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 300,
             child:
             Text(
               "Preencha as credenciais", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 40),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Selecione sua especialidade",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                  SizedBox(height: 8),
                  Container(
                    width: 350,
                    child: DropdownButtonFormField<String>(
                      value: categoriaSelecionada,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      items: categorias.map((cat) {
                        return DropdownMenuItem(
                          value: cat,
                          child: Text(cat),
                        );
                      }).toList(),
                      onChanged: (value) {
                        categoriaSelecionada = value;
                        print("Selecionou: $categoriaSelecionada");
                      },
                    ),
                  )
                 ],
               ),

               SizedBox(height: 20),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Selecione categorias",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),
                   Container(
                    width: 350,
                    child: DropdownButtonFormField<String>(
                      value: categoriaSelecionada,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      items: categorias.map((cat) {
                        return DropdownMenuItem(
                          value: cat,
                          child: Text(cat),
                        );
                      }).toList(),
                      onChanged: (value) {
                        categoriaSelecionada = value;
                        print("Selecionou: $categoriaSelecionada");
                      },
                    ),
                  )
                 ],
               ),
                SizedBox(height: 20),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Possui unidade fisíca?",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                    width: 350,
                    child: DropdownButtonFormField<String>(
                      value: categoriaSelecionada,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      items: categorias.map((cat) {
                        return DropdownMenuItem(
                          value: cat,
                          child: Text(cat),
                        );
                      }).toList(),
                      onChanged: (value) {
                        categoriaSelecionada = value;
                        print("Selecionou: $categoriaSelecionada");
                      },
                    ),
                  )
                 ],
               ),
               
             ],  
           ),
           SizedBox(height: 60),
           Center(
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "/signup/vendor-adress-step");

                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Avançar",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, "/signup/vendor-name-step");
             },
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 

class SignupVendorAdressStep extends StatefulWidget {
  @override
  _SignupVendorAdressStepState createState() => _SignupVendorAdressStepState();
}

class _SignupVendorAdressStepState extends State<SignupVendorAdressStep> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 300,
             child:
             Text(
               "Preencha as credenciais", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 20),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "CEP",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Rua",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Número",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Complemento",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: const Color.fromARGB(255, 197, 197, 197)
                            )
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
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "/signup/vendor-opening-hours-step");

                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Avançar",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
              Navigator.pushNamed(context, "/signup/vendor-specialties-step");
             },
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 

class SignupVendorOpeningHoursStep extends StatefulWidget {
  @override
  _SignupVendorOpeningHoursStepState createState() => _SignupVendorOpeningHoursStepState();
}

class _SignupVendorOpeningHoursStepState extends State<SignupVendorOpeningHoursStep> {
  bool mondayOpening = false;
  bool tuesdayOpening = false;
  bool wednesdayOpening = false;
  bool thursdayOpening = false;
  bool fridayOpening = false;
  bool saturdayOpening = false;
  bool sundayOpening = false;
  @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 380,
             child:
             Text(
               "Informe os horários\n e dias de funcionamento", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               
               SizedBox(height: 20),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Segunda-feira",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: mondayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        mondayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !mondayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        mondayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      


                        ],
                      )
                    ),
                 ],
               ),
              SizedBox(height: 20),

              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Terça-feira",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: tuesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        tuesdayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !tuesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        tuesdayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                        ],
                      )
                    ),
                 ],
               ),
              SizedBox(height: 20),

              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Quarta-feira",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: wednesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        wednesdayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !wednesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        wednesdayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                        ],
                      )
                    ),
                 ],
               ),

              
               
             ],  
           ),
           SizedBox(height: 60),
           Center(
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "/signup/vendor-opening-hours2-step");

                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Avançar",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
              Navigator.pushNamed(context, "/signup/vendor-adress-step");
             },
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 
class SignupVendorOpeningHours2Step extends StatefulWidget {
  @override
  _SignupVendorOpeningHours2StepState createState() => _SignupVendorOpeningHours2StepState();
}

class _SignupVendorOpeningHours2StepState extends State<SignupVendorOpeningHours2Step> {
  bool mondayOpening = false;
  bool tuesdayOpening = false;
  bool wednesdayOpening = false;
  bool thursdayOpening = false;
  bool fridayOpening = false;
  bool saturdayOpening = false;
  bool sundayOpening = false;
  @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 380,
             child:
             Text(
               "Informe os horários\n e dias de funcionamento", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               
               SizedBox(height: 20),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Quinta-feira",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: mondayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        mondayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !mondayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        mondayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      


                        ],
                      )
                    ),
                 ],
               ),
              SizedBox(height: 20),

              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Sexta-feira",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: tuesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        tuesdayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !tuesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        tuesdayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                        ],
                      )
                    ),
                 ],
               ),
              SizedBox(height: 20),

              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Sábado",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: wednesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        wednesdayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !wednesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        wednesdayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                        ],
                      )
                    ),
                 ],
               ),

              
               
             ],  
           ),
           SizedBox(height: 60),
           Center(
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "/signup/vendor-opening-hours3-step");

                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Avançar",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
              Navigator.pushNamed(context, "/signup/vendor-specialties-step");
             },
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 

class SignupVendorOpeningHours3Step extends StatefulWidget {
  @override
  _SignupVendorOpeningHours3StepState createState() => _SignupVendorOpeningHours3StepState();
}

class _SignupVendorOpeningHours3StepState extends State<SignupVendorOpeningHours3Step> {
  bool mondayOpening = false;
  bool tuesdayOpening = false;
  bool wednesdayOpening = false;
  bool thursdayOpening = false;
  bool fridayOpening = false;
  bool saturdayOpening = false;
  bool sundayOpening = false;
  @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SingleChildScrollView(
       child:Column(
        children: [
         SizedBox(height: 40),
          Center(
           child:
             SvgPicture.asset(
               "assets/images/logo.svg", 
               width: 200),
           ),
           SizedBox(height: 60),
           Container(
             width: 380,
             child:
             Text(
               "Informe os horários\n e dias de funcionamento", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w800,
                 ),
               ),
           ),
           SizedBox(height: 15),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               
               SizedBox(height: 20),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Domingo",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: mondayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        mondayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !mondayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        mondayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      


                        ],
                      )
                    ),
                 ],
               ),
              SizedBox(height: 20),

              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding:  const EdgeInsets.only(left:0 ),
                      child: Text(
                       "Feriados",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ),
                   SizedBox(height: 8),

                   Container(
                      width: 350,
                      child: Row(

                        children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                children: [
                                  Checkbox(
                                    value: tuesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        tuesdayOpening = true;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Aberto",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: !tuesdayOpening,
                                    onChanged: (bool? novoValor) {
                                      setState(() {
                                        tuesdayOpening = false;
                                      });
                                    },
                                  ),
                                  Text(
                                   "Fechado",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Início",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                          SizedBox(width: 20),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  const EdgeInsets.only(left:0 ),
                                  child: Text(
                                   "Hora de Fim",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 )
                               ),
                               SizedBox(height: 8),

                               Container(
                                  width: 100,
                                  child:
                                  TextField(
                                    decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(255, 197, 197, 197)
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                             ],
                           ),      
                        ],
                      )
                    ),
                 ],
               ),
              SizedBox(height: 20),


              
               
             ],  
           ),
           SizedBox(height: 60),
           Center(
             child:Container(
               height: 50,
               width: 350,
               child: ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "/signup/account-options-step");

                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xffE21584),        // Cor de fundo
                   foregroundColor: Colors.white,       // Cor do texto/ícone
                   padding: EdgeInsets.all(
                     15
                   ),
                   shape: RoundedRectangleBorder(       // Borda arredondada
                     borderRadius: BorderRadius.circular(6),
                   ),
                   elevation: 0,                        // Sombra
                 ),
                 child: Text(
                   "Avançar",
                   style: TextStyle(fontSize: 18),
                 ),
               ), 
             )
           ),
           SizedBox(height: 20),
          GestureDetector(
             onTap: () {
              Navigator.pushNamed(context, "/signup/vendor-specialties-step");
             },
             child:Text(
              "Voltar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE21584),        // Cor de fundo
                fontSize: 16, )
            )
           )
         ]  
       ) 

      )

    );  
  } 
} 
