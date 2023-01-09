import 'package:flutter/material.dart';
import 'package:gst/carrierObjective.dart';
import 'package:gst/pdf.dart';
import 'package:gst/personalDetails.dart';
import 'package:gst/resume.dart';

import 'Achievements.dart';
import 'Declaration.dart';
import 'Education.dart';
import 'Experience.dart';
import 'Projects.dart';
import 'Refrences.dart';
import 'TechnicalSkills.dart';
import 'coin.dart';
import 'hobbies.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes:{
        'home':(context) => const Shreya(),
        're':(context) => const Working(),
        'cf' : (context) => const contactInfo(),
        'co' : (context) => const carrier(),
        'pd' : (context) => const Personal(),
        'ed' : (context) => const edu(),
        'ex' : (context) => const exp(),
        'ts' : (context) => const tech(),
        'hb' : (context) => const hobby(),
        'pr' : (context) => const pro(),
        'am' : (context) => const Achieve(),
        'rf' : (context) => const ref(),
        'de' : (context) => const dec(),
        'pdf' : (context) => const mypdf(),
      },
  ),
  );
  }

class Shreya extends StatefulWidget {
  const Shreya({Key? key}) : super(key: key);

  @override
  State<Shreya> createState() => _ShreyaState();
}
class _ShreyaState extends State<Shreya> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Resume Builder",
             style:TextStyle(
               fontWeight: FontWeight.w700,
               color: Colors.white,
               fontSize: 25,
               letterSpacing: 0.9,
             )
         ) ,
         centerTitle: true,
         backgroundColor: Colors.blue,
         elevation: 0,
       ),
      body: Column(
          children: [
            Container(
              height:50,
              width:double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child:Text("RESUMES",
                  style:TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 0.7,
                  )
              ) ,
            ),
            Padding(padding: EdgeInsets.all(50)),
            Icon(Icons.work_rounded,size: 150,color: Colors.blue,),
            Padding(padding: EdgeInsets.all(20)),
            Text("No Resumes + Create new resume",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: (){


                setState(() {
                  Navigator.pushNamed(context, 're');
                });


                  },
                    child:Icon(
                      Icons.add,size: 25,color: Colors.white,
                    ),
                  )
              ),
            )
          ],
        ),
    );
  }
}

