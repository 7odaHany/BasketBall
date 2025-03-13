// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 33,
                        ),
                      ),
                      Text(
                        '$teamAScore',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAScore += 1;
                          });
                        },
                        child: const Text(
                          '1 points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAScore += 2;
                          });
                        },
                        child: const Text(
                          '2 points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAScore += 3;
                            print('Team A: $teamAScore');
                          });
                        },
                        child: Text(
                          '3 points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.blue,
                    thickness: 1,
                    endIndent: 50,
                    indent: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 33,
                        ),
                      ),
                      Text(
                        '$teamBScore',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.blue,
                          minimumSize: Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBScore += 1;
                            print('Team B: $teamBScore');
                          });
                        },
                        child: Text(
                          '1 points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBScore += 2;
                            print('Team B: $teamBScore');
                          });
                        },
                        child: Text(
                          '2 points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBScore += 3;
                            print('Team B: $teamBScore');
                          });
                        },
                        child: Text(
                          '3 points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(120, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAScore = 0;
                  teamBScore = 0;
                  print('Reset');
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
