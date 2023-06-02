import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'leagues.dart';
import 'loginForm.dart';
import 'Registration.dart';

class TeamsPage extends StatelessWidget {
  final String leagueName;

  TeamsPage({required this.leagueName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(leagueName),
        backgroundColor: Color.fromARGB(255, 16, 21, 24),
      ),
      backgroundColor: Color.fromARGB(255, 16, 21, 24),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'Your Position is: 10',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 49, 88, 109),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Team',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Points',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/teamsdetailPage');
                    },
                    child: buildTeamRow('1', 'Team-1', '4'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/teamDetailsPage');
                    },
                    child: buildTeamRow('2', 'Team-2', '5'),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: buildTeamRow('4', 'Team-3', '9'),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: buildTeamRow('1', 'Team-1', '4'),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: buildTeamRow('2', 'Team-2', '5'),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: buildTeamRow('4', 'Team-3', '9'),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: buildTeamRow('1', 'Team-1', '4'),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: buildTeamRow('2', 'Team-2', '5'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTeamRow(String position, String teamName, String points) {
    return Column(
      children: [
        Divider(
          color: Colors.white,
          thickness: 1,
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                position,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                teamName,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                points,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
