import 'package:flutter/material.dart';
import 'navi.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fähigkeiten'),
      ),
      drawer: Navigationmaler(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSkillSection(
              title: 'Programmiersprachen',
              skills: '- Dart, Java, Python',
              color: Colors.blue.withOpacity(0.1),
              icon: Icons.code,
            ),
            SizedBox(height: 20),
            _buildSkillSection(
              title: 'Tools und Frameworks',
              skills: '- Flutter, Android Studio, Git',
              color: Colors.green.withOpacity(0.1),
              icon: Icons.build,
            ),
            SizedBox(height: 20),
            _buildSkillSection(
              title: 'Soft Skills',
              skills: '- Teamarbeit, Problemlösung, Kommunikation',
              color: Colors.orange.withOpacity(0.1),
              icon: Icons.group,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillSection({required String title, required String skills, required Color color, required IconData icon}) {
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
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            skills,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: SkillsPage()));
