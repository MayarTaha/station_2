import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/intro.jpg'),
              ),
            ),
            child: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.add),
            iconColor: Colors.cyan[900],
            title: const Text('اضافة مضخة'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            iconColor: Colors.cyan[900],
            title: const Text('الاعدادات'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            iconColor: Colors.cyan[900],
            title: const Text('عرض فواتير البيع'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            iconColor: Colors.cyan[900],
            title: const Text('تسجيل الخروج'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
