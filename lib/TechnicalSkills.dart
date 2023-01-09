import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'globals.dart';
class tech extends StatefulWidget {
  const tech({Key? key}) : super(key: key);

  @override
  State<tech> createState() => _techState();
}

class _techState extends State<tech> {
  List<String>Skill = <String>[];
  List<TextEditingController> myController = <TextEditingController>[];
  int i =0;
  Row myList(int i){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       SizedBox(
         width: 280,
         child: TextFormField(
           controller: myController[i],
           onChanged: (val){
             setState(() {
               Globals.Skill![i] = val;
             });
           },
         ),
       ),
        IconButton(onPressed: (){
          setState(() {
            Skill.remove(Skill[i]);
            myController.removeAt(i);
          });
        }, icon: Icon(Icons.delete)),

      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Technical Skills",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 25,
              letterSpacing: 0.9,
            )),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
    child: Container(
    height: 700,
    width: 400,
    color: Colors.white,
    child: Column(
    children: [
      Padding(padding: EdgeInsets.all(10)),
      Text("Enter Your Skills",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
      for(int i =0;i<myController.length;i++)

     myList(i),

      Padding(padding: EdgeInsets.all(20)),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey,width: 2),
          borderRadius: BorderRadius.circular(5)
        ),
        width: 300,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white
          ),
            onPressed: (){
          setState(() {
            myController.add(TextEditingController());
            Skill.add("");
          });
        }, child: Icon(Icons.add,color: Colors.grey,)),
      ),
      Center(child: Text("$Skill"),)
    ]
      ),
    ),
      ),backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
