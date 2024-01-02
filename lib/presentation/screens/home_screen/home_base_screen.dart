import 'package:coffee_shop_app/presentation/screens/home_screen/content_home_screen.dart';
import 'package:flutter/material.dart';

class HomaBaseScreen extends StatefulWidget {
  const HomaBaseScreen({super.key});

  @override
  State<HomaBaseScreen> createState() => _HomaBaseScreenState();
}

List screens = [
  const ContentHomeScreen(),
];

int currentindex = 0;

class _HomaBaseScreenState extends State<HomaBaseScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextFormField(
          onChanged: (value) {},
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.notifications_none_outlined)
          )
        ],
      ),
      body: screens[0],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          )
        ],
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}