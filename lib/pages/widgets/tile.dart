import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tile extends StatelessWidget {
  const Tile(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.backgroundColor,
      required this.textColor,
      required this.onTap});

  final String title;
  final String imagePath;
  final Color backgroundColor;
  final Color textColor;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 370.0,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(60, 0, 0, 0),
                  spreadRadius: 2.0,
                  blurRadius: 4.0,
                  offset: Offset(14.0, 14.0))
            ]),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                child: Image.asset(imagePath, fit: BoxFit.cover)),
            ListTile(
                title: Text(title,
                    style: GoogleFonts.quicksand(
                        color: textColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                iconColor: textColor)
          ],
        ),
      ),
    );
  }
}
