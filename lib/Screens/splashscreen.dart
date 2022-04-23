import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matelas/Screens/auth.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome To My APP',
                  style: GoogleFonts.indieFlower(
                      color: Colors.pinkAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              Text('We Make life more easier',
                  style: GoogleFonts.josefinSans(fontSize: 20)),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/femme.jpg'),
                        fit: BoxFit.contain)),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.pinkAccent)),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (_) {
                      return const Authentification();
                    }));
                  },
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.robotoSlab(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
