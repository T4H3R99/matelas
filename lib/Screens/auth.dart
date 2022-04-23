import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:matelas/Screens/homepage.dart';
import 'package:matelas/Screens/splashscreen.dart';

class Authentification extends StatefulWidget {
  const Authentification({Key? key}) : super(key: key);

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snpashot) {
          if (snpashot.hasData) {
            return HomePage();
          } else {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Enter Your Email Please',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusColor: Colors.grey[800],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.key),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Enter Your ID Please',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusColor: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        signIn();
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.robotoSlab(),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.pinkAccent)),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  void signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.toString(), password: password.text.toString());
  }
}
