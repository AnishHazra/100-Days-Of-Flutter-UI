import 'package:flutter/material.dart';
import 'package:space_app/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff890048),
      child: Column(
        children: [
          //! app logo
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset(
              "assets/images/SOLAR SYSTEM.png",
              height: 200.0,
              width: 200.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          //! home list tile
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          //! settings list tile
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {},
          ),
          const Spacer(),
          //! logout list tile
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.settings,
            onTap: () {},
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
