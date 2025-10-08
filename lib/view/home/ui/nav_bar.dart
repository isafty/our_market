import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_1/view/home/logic/cubit/nav_bar_cubit.dart';
import 'package:new_app_1/view/home/ui/favorit_view.dart';
import 'package:new_app_1/view/home/ui/home_view.dart';
import 'package:new_app_1/view/home/ui/profile_view.dart';
import 'package:new_app_1/view/home/ui/store_view.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  final List<Widget> views = const [
    HomeView(),
    StoreView(),
    ProfileView(),
    FavoritView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();

          return Scaffold(
            body: SafeArea(
              child: views[cubit.currentIndex],
            ), // Use currentIndex to select the view كنت ناسيها
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeNavBar(index);
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.store),
                  label: 'Store',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorites',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
