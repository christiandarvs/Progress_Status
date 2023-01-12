import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Text(
              'Welcome back, Christian!',
              style: GoogleFonts.poppins(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 300,
              child: Image.network(
                'https://media3.giphy.com/media/3oEjHZKRgiZXYmVVbq/giphy.gif?cid=ecf05e47drers2mv8ka0r52uezh8h1cyut4bu0oe7ruelmsm&rid=giphy.gif&ct=g',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
