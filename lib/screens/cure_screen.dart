import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CureScreen extends StatelessWidget {
  const CureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cure Screen", style: GoogleFonts.poppins(fontSize: 40.0),),
      ),
    );
  }
}
