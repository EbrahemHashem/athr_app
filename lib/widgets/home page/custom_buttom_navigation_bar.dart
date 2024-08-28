import 'package:athr_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  State<CustomButtomNavigationBar> createState() => _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  int selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (val) {
          setState(() {});
          selectedIndex = val;
          // if (selectedIndex == 0) {
          //   Navigator.pushNamed(context, 'SignUpView');
          // }
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: kColorBlue,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_rounded),
            label: 'المزيد',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.format_shapes), label: 'أعمالنا'),
          BottomNavigationBarItem(icon: Icon(Icons.mode_standby_outlined), label: 'مشاريعنا'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'العربة'),
          BottomNavigationBarItem(icon: Icon(Icons.house_outlined), label: 'الرئيسية'),
        ]);
  }
}
