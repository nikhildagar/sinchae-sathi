import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:sinchai_sathi/constants/constants.dart';
import 'package:sinchai_sathi/screens/cure_screen.dart';
import 'package:sinchai_sathi/screens/home_screen.dart';
import 'package:sinchai_sathi/screens/irrigation_screen.dart';
import 'package:sinchai_sathi/screens/login_screen.dart';

class BottombarScreen extends StatefulWidget {
  const BottombarScreen({super.key});

  @override
  State<BottombarScreen> createState() => _BottombarScreenState();
}
int screenIndex = 0;

class _BottombarScreenState extends State<BottombarScreen> {
  @override
  Widget build(BuildContext context) {
    List screenList  = [HomeScreen(), CureScreen(), IrrigationScreen(), IrrigationScreen(), IrrigationScreen()];
    return Scaffold(
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: kPrimaryColor,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.energy_savings_leaf, title: 'Cure'),
            TabItem(icon: Icons.cloud, title: 'Weather'),
            TabItem(icon: Icons.water_drop, title: 'Irrigation'),
            TabItem(icon: Icons.note, title: 'MP'),
          ],
          onTap: (int i){
            setState(() {
              screenIndex = i;
            });
          },
        ),
      body: screenList[screenIndex],
    );
  }
}
