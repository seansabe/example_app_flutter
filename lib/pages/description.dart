import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.title, required this.imagePath});

  final String title;
  final String imagePath;
  final String text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E7A0D),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(title,
            style: GoogleFonts.quicksand(
                color: const Color(0xFFFFFFFF),
                fontSize: 15.0,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Container(
                width: 370.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(60, 0, 0, 0),
                          spreadRadius: 2.0,
                          blurRadius: 4.0,
                          offset: Offset(14.0, 14.0))
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              SizedBox(
                width: 370.0,
                child: Text(text,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.quicksand(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
