import 'package:flutter/material.dart';
import 'navi.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projekte'),
      ),
      drawer: Navigationmaler(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0,  vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildProjectItem(
              title: 'Python: Taschenrechner ohne Benutzeroberfläche',
              icon: Icons.calculate,
              color: Colors.blue.withOpacity(0.1),
              projectTitle: 'Projekt 1',
            ),
            SizedBox(height: 20),
            _buildProjectItem(
              title: 'Java: Snake Spiel',
              icon: Icons.games,
              color: Colors.green.withOpacity(0.1),
              projectTitle: 'Projekt 2',
            ),
            SizedBox(height: 20),
            _buildProjectItem(
              title: 'Java: Einkaufsliste mit Benutzereingabe',
              icon: Icons.shopping_cart,
              color: Colors.orange.withOpacity(0.1),
              projectTitle: 'Projekt 3',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectItem({required String title, required IconData icon, required Color color, required String projectTitle}) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
                size: 30,
                color: Colors.grey[800],
              ),
              SizedBox(width: 10),
              Text(
                projectTitle,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: ProjectsPage()));
