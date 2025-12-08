import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupUserInterestsStep extends StatefulWidget {
  const SignupUserInterestsStep({super.key});

  @override
  State<SignupUserInterestsStep> createState() =>
      _SignupUserInterestsStepState();
}

class _SignupUserInterestsStepState extends State<SignupUserInterestsStep> {
  final _formKey = GlobalKey<FormState>();

  final List<String> interests = [
    "Cinema",
    "Música",
    "Esportes",
    "Tecnologia",
    "Moda",
    "Gastronomia"
  ];

  Set<String> selected = {};

  void toggleInterest(String interest) {
    setState(() {
      if (selected.contains(interest)) {
        selected.remove(interest);
      } else {
        selected.add(interest);
      }
    });
  }

  Widget buildInterestBox(String label) {
    bool isSelected = selected.contains(label);

    return GestureDetector(
      onTap: () => toggleInterest(label),
      child: Container(
        width: 140,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF64C4DA) : Color(0xFFEAFAFE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            color: isSelected ? Colors.white : Color(0xFF64C4DA),
          ),
        ),
      ),
    );
  }

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
                  "Escolha alguns dos seus interesses",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),

              SizedBox(height: 40),

              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: interests.map(buildInterestBox).toList(),
              ),

              SizedBox(height: 40),
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
            ],
          ),
        ),
      ),
    );
  }
}
