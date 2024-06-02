import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smart_closet/features/chat/presentation/chat_view.dart';
import 'package:smart_closet/features/favorite/presentation/favorite_view.dart';
import 'package:smart_closet/features/home/presentation/home_view.dart';
import 'package:smart_closet/features/shop/presentation/store_view.dart';
import 'package:smart_closet/features/user_profile/presentation/profile/profile_view.dart';
import 'package:smart_closet/theme/colors.dart';

class SmartAppBar extends StatefulWidget {
  const SmartAppBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SmartAppBarState createState() => _SmartAppBarState();
}

class _SmartAppBarState extends State<SmartAppBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const StoreView(),
    const FavoriteView(),
    const ChatView(),
    const ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shop),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: ' ',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.archColor,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
