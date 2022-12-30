import 'package:example_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E7A0D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/xbox_logo.png', width: 200.0),
            Text(
              'Xlog',
              style: GoogleFonts.quicksand(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 36.0,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 50.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return const Home();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00DC07),
                    minimumSize: const Size(300.0, 40.0)),
                child: Text('Login',
                    style: GoogleFonts.quicksand(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold))),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFFFFF),
                    minimumSize: const Size(300.0, 40.0)),
                child: Text('Register',
                    style: GoogleFonts.quicksand(
                        color: const Color(0xFF00DC07),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
