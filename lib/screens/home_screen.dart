import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinchai_sathi/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 20.0,),
              CustomBoard(
                mainColumn: Text("Water Irrigation\nBoard", style: GoogleFonts.poppins(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w500),),
                icon: Icons.water_drop,
              ),
              CustomBoard(
                mainColumn: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Gurugram, 22 September", style: GoogleFonts.poppins(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w500),),
                    Text("35° C", style: GoogleFonts.poppins(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w500),),
                    Text("Perception of rain: 14%", style: GoogleFonts.poppins(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w500),),
                    SizedBox(height: 5.0,)
                  ],
                ),
                icon: Icons.severe_cold,
              ),
              CustomBoard(
                mainColumn: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.upload, color: Colors.white,),
                        SizedBox(width: 21.0,),
                        Text("Upload picture of crop", style: GoogleFonts.poppins(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.search_outlined, color: Colors.white,),
                        SizedBox(width: 21.0,),
                        Text("See Diagnosis", style: GoogleFonts.poppins(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.clean_hands_sharp, color: Colors.white,),
                        SizedBox(width: 21.0,),
                        Text("Get Treatment", style: GoogleFonts.poppins(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
                icon: Icons.clean_hands_sharp,
              ),
              CustomBoard(
                mainColumn: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80.0,
                      width: 190.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Soil Analysis", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20.0), ),
                        ),
                      ),
                    )
                  ],
                ),
                icon: Icons.energy_savings_leaf,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBoard extends StatelessWidget {

  final mainColumn;
  final icon;

  const CustomBoard({
    super.key,
    this.mainColumn, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          height: 140.0,
          width: double.infinity,
          child: Card(
            elevation: 10.0,
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(2.2),
                child: mainColumn
              ),
              trailing: Icon(icon, size: 60.0, color: Colors.white,),
            ),
            color: kPrimaryColor,
          ),
        ),
        SizedBox(height: 10.0,)
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundColor: kPrimaryColor,
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ9W15Hh_7mgF-oO3Dl_M32EWBjJUo_cA8Uw&s"),
              radius: 30.0,
            ),
          ),
          Icon(Icons.notifications_active, color: kPrimaryColor, size: 45.0,),
        ],
      ),
    );
  }
}
