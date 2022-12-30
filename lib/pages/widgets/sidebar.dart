import 'package:example_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0E7A0D),
      child: Column(children: [
        DrawerHeader(
            child: Container(
          alignment: Alignment.topLeft,
          child: Image.asset('images/xbox_logo.png', width: 80.0),
        )),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.settings_rounded, color: Color(0xFFFFFFFF)),
          title: Text(
            'Settings',
            style: GoogleFonts.quicksand(
                color: const Color(0xFFFFFFFF),
                fontSize: 15.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              return const Login();
            }));
          },
          leading: const Icon(Icons.logout_rounded, color: Color(0xFFFFFFFF)),
          title: Text(
            'Logout',
            style: GoogleFonts.quicksand(
                color: const Color(0xFFFFFFFF),
                fontSize: 15.0,
                fontWeight: FontWeight.w600),
          ),
        )
      ]),
    );
  }
}
