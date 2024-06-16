import 'package:flutter/material.dart';

class Navigationmaler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF4DB6AC),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF00796B),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Navigationsmenü',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            buildListTile(context, Icons.home, 'Startseite', '/home'),
            buildListTile(context, Icons.person, 'Über mich', '/about'),
            buildListTile(context, Icons.work, 'Lebenslauf', '/resume'),
            buildListTile(context, Icons.build, 'Fähigkeiten', '/skills'),
            buildListTile(context, Icons.computer, 'Projekte', '/projects'),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(BuildContext context, IconData icon, String title, String routeName) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, routeName);
      },
    );
  }
}
