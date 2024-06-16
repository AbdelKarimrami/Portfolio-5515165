import 'package:flutter/material.dart';
import 'navi.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lebenslauf'),
      ),
      drawer: Navigationmaler(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSection(
              color: Colors.grey.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionHeaderWithIcon(Icons.person, 'ZUR PERSON', Colors.green.shade700),
                  SizedBox(height: 10),
                  _buildPersonalInfoRow(Icons.person, 'Name:', 'Abdelkarim Rami'),
                  _buildPersonalInfoRow(Icons.home, 'Anschrift:', 'Dreieichstraße 5, 63128 Dietzenbach'),
                  _buildPersonalInfoRow(Icons.cake, 'Geburtsdatum/-ort:', '03.04.2005 in Langen'),
                  _buildPersonalInfoRow(Icons.phone, 'Telefon:', '+49 177 3189984'),
                  _buildPersonalInfoRow(Icons.email, 'Email:', 'karimrami571@gmail.com'),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildSection(
              color: Colors.grey.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionHeaderWithIcon(Icons.school, 'Schulischer Werdegang', Colors.green.shade700),
                  SizedBox(height: 10),
                  _buildEducationItem(
                    '08/2011 - 07/2015',
                    'Grundschule',
                    'Aue-Schule, 63128 Dietzenbach',
                  ),
                  _buildEducationItem(
                    '08/2015 - 07/2021',
                    'Gesamtschule (Realschulklasse)',
                    'Ernst-Reuter-Schule, 63128 Dietzenbach',
                  ),
                  _buildEducationItem(
                    '08/2022 - 07/2023',
                    'Berufsschule (Fachhochschulreife)',
                    'August-Bebel-Schule, 63069 Offenbach',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildSection(
              color: Colors.grey.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionHeaderWithIcon(Icons.work, 'Berufspraxis', Colors.green.shade700),
                  SizedBox(height: 10),
                  _buildJobExperienceItem(
                    '13/01/2020 – 25/01/2020',
                    'Schulpraktikum',
                    'Kindertagesstätte VII Kinderburg – Dietzenbach',
                  ),
                  _buildJobExperienceItem(
                    '08/2022 – 07/2022',
                    'Jahrespraktikum',
                    'Aldacom GmbH – Neu-Isenburg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required Color color, required Widget child}) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }

  Widget _buildSectionHeaderWithIcon(IconData icon, String title, Color color) {
    return Row(
      children: [
        Icon(icon, color: color),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color),
        ),
      ],
    );
  }

  Widget _buildPersonalInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.grey[800]),
          SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String date, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(subtitle, style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      ),
    );
  }

  Widget _buildJobExperienceItem(String date, String title, String company) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(company, style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: ResumePage()));
