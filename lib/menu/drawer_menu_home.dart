import 'package:flutter/material.dart';

import '../dialog/logout_dialog.dart';
import '../pages/home_page.dart';

class CustomDrawerMenuHome extends StatelessWidget {
  const CustomDrawerMenuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Antonio Costa dos Santos"),
            accountEmail: Text("antonio195br@gmail.com"),
          ),
          ListTile(
            leading: const Icon(Icons.home_filled),
            title: const Text("Home"),
            onTap: () {
              print("Home");
            },
          ),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text("Dark mode"),
            trailing: CustomSwitchTheme(),
            onTap: () {
              print("Home");
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              dialogBuilder(context);
            },
          ),
        ],
      ),
    );
  }
}

