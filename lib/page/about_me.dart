import 'package:flutter/material.dart';
import 'navi.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Über mich'),
      ),
      drawer: Navigationmaler(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            SizedBox(height: 20),
            Text(
              'Über mich',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Persönliche Interessen',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ich liebe es, Fußball zu spielen und bin seit meiner Kindheit aktiv dabei. Zusätzlich vertiefe ich mich gerne in Literatur und entdecke neue Romane, die meine Vorstellungskraft anregen und mein Verständnis erweitern.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Technologische Interessen',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ich bin ein leidenschaftlicher Entwickler und interessiere mich besonders für mobile App-Entwicklung, künstliche Intelligenz und UI/UX-Design. Diese Bereiche faszinieren mich und ich verbringe viel Zeit damit, neue Technologien zu erforschen und innovative Lösungen zu entwickeln.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Zukunftsvision',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'In Zukunft sehe ich mich weiterhin in einer dynamischen Umgebung, in der ich meine kreativen Ideen umsetzen und einen positiven Einfluss auf die Welt haben kann. Ich strebe danach, mein Wissen zu erweitern und neue Herausforderungen anzunehmen, die meine Leidenschaft für Technologie und Innovation widerspiegeln.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Anime Interesse',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ein besonderes Hobby von mir ist das Schauen von Animes, insbesondere bin ich ein großer Fan von Dragonball. Mein Lieblingscharakter ist Son Goku, dessen unglaubliche Stärke, Kampfgeist und seine Fähigkeit, ständig neue Herausforderungen anzunehmen, mich inspirieren.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: AboutPage()));
