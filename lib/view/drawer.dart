import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senyas/view/about.dart';
import 'package:senyas/view/instruction.dart';
import 'package:senyas/view/library.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/logo.png',
                width: 100,
                height: 100,
              )),
          SizedBox(height: 20),
          ListTile(
            title: Text('Library',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 18, color: Colors.blue)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LibraryScreen()));
            },
          ),
          SizedBox(height: 15),
          ListTile(
            title: Text('Instructions',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 18, color: Colors.blue)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InstructionScreen()));
            },
          ),
          SizedBox(height: 15),
          ListTile(
            title: Text('About',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 18, color: Colors.blue)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
            },
          )
        ],
      ),
    );
  }
}
