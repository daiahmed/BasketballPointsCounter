import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 9),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>PointsCounter(), ));
    });
  }
  @override
  void dispose(){
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
   return
    Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffffc8aed1),
              Colors.white,
              Color(0xffffc8aed1)
            ]
          )
        ),
         child: Column(
           children: [
             SizedBox(height: 100),
             const Center(
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: CircleAvatar(
                     backgroundColor: Colors.deepPurple,
                     radius: 160,
                     child: CircleAvatar(
                       backgroundImage: AssetImage('images/basketball.jpg') ,
      
                       radius: 155,
                     ),
                   ),
                 )),
             SizedBox(
               height: 40,
             ),
             Center(
      
               child: Text("Basketball Points Counter",style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
                 color: Color(0xffff9978ad),
                 fontFamily:"PatuaOne"
               )),
             )
           ],
         ),
         width: double.infinity,
       ),
    );


  }
}