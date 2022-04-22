// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kahvefali/screen/burclar_page.dart';
import 'package:kahvefali/screen/fal_add_page.dart';
import 'package:kahvefali/screen/home_page.dart';
import 'package:kahvefali/screen/profile_page.dart';
import 'package:kahvefali/screen/store_page.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  List<Widget> bodyPages = [
    const HomePage(),
    const StorePage(),
    const BurclarPage(),
    const ProfilePage()
  ];

  Widget bodyPage = const HomePage();
  int _selectedPageIndex = 0;

  void BodyPageChange(int index) => setState(() {
        bodyPage = bodyPages[index];
        _selectedPageIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedPageIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                Get.to(const FallAddPage());
              },
              backgroundColor: Colors.pinkAccent,
              child: const Icon(
                FontAwesomeIcons.mugSaucer,
                color: Colors.white,
              ),
            )
          : null,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Kahve Falı',
              style: Theme.of(context).textTheme.headline6,
            ),
            Container(
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(50)),
              width: 150,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.pink,
                              shape: BoxShape.circle
                          ),
                          child: Icon(Icons.add)),
                    ),
                  ),

                  Text(
                    '100',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 11.0),
                    child: Icon(
                      FontAwesomeIcons.mugSaucer,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SafeArea(child: bodyPage),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.white38,
        currentIndex: _selectedPageIndex,
        onTap: BodyPageChange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.mugHot),
            label: 'Yorumlar',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store), label: 'Market'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.globe), label: 'Burçlar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline), label: 'Profil'),
        ],
      ),
    );
  }
}
