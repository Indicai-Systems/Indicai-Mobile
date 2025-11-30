import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
               "Estamos felizes em vê-lo novamente!", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30,
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
                       "Email",
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
                       "Senha",
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
                       keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.grey[800]!,
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.grey[800]!,
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
                 onPressed: () {},
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
                   "Entrar",
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
              "Não possui uma conta? Cadastra-se",
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
