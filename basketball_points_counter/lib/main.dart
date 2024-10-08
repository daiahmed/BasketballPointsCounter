import 'package:basketball_points_counter/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class PointsCounter extends StatefulWidget{
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA_score=0;

  int teamB_score =0;

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Row(
          children: [
            Icon(Icons.sports_basketball, color: Colors.white,),
            SizedBox(width: 12,),
            Text('Points Counter'
            , style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                 color: Colors.white
              ),),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white38,
              Color(0xffffc8aed1),
                Colors.white
              ])
          )
       ,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text('Team A',style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                       color: Colors.black
                    ),),
                      Text('$teamA_score',style: TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamA_score++;
                        });
                        },
                        child: Text('Add 1 Point',
                      style:TextStyle(
                        color: Colors.white
                      ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple

                      ),

                      ),
                      ElevatedButton(onPressed: (){setState(() {
                        teamA_score+=2;
                      });}, child: Text('Add 2 Point',
                        style:TextStyle(
                            color: Colors.white
                        ),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple

                        ),),
                      ElevatedButton(onPressed: (){setState(() {
                        teamA_score+=3;
                      });}, child: Text('Add 3 Point',
                        style:TextStyle(
                            color: Colors.white
                        ),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple

                        ),)

                        ],
                  ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.purple,
                   thickness: 3,
                  indent: 14,
                  // endIndent: 10,
                    ),
                ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text('Team B',style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),Text('$teamB_score',style: TextStyle(
                        fontSize: 120,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                      ElevatedButton(onPressed: (){setState(() {
                        teamB_score++;
                      });}, child: Text('Add 1 Point',
                        style:TextStyle(
                            color: Colors.white
                        ),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple

                        ),
                      ),
                      ElevatedButton(onPressed: (){setState(() {
                        teamB_score+=2;
                      });}, child: Text('Add 2 Point',
                        style:TextStyle(
                            color: Colors.white
                        ),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple

                        ),
                      ),
                      ElevatedButton(onPressed: (){setState(() {
                        teamB_score+=3;
                      });}, child: Text('Add 3 Point',
                        style:TextStyle(
                            color: Colors.white
                        ),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple

                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: ElevatedButton(onPressed: (){setState(() {
                    teamB_score=0;
                    teamA_score=0;
                  });}, child: Text('RESET',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                  ),),style:
                    ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,

                    )
                    ,))
            ],
          ),
        ),
      ),
    ),
  );

  }
}