import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'globals.dart';

class pro extends StatefulWidget {
  const pro({Key? key}) : super(key: key);

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  bool C = false;
  bool Cplus = false;
  bool Flutter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects",
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
        margin: EdgeInsets.all(10),
        child: Container(
          height: 750,
          width: 400,
          color: Colors.white,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(5)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Project Title",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 40,
                margin: EdgeInsets.all(12),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      Globals.protitle =value;
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      
                    ),
                    hintText: "Resume Builder App",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(2)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Technologies",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "C Programming",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  value: Globals.C,
                  onChanged: (value) {
                    setState(() {
                      Globals.C = value;
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "C++",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  value: Globals.Cplus,
                  onChanged: (value) {
                    setState(() {
                      Globals.Cplus = value;
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  value: Globals.Flutter,
                  onChanged: (value) {
                    setState(() {
                      Globals.Flutter = value;
                    });
                  }),
              Padding(padding: EdgeInsets.all(2)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Roles",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 40,
                margin: EdgeInsets.all(12),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      Globals.jobrole =value;
                    });
                  },
                  maxLines: 2,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    hintText: "Organize Team Members",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(2)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Technologies",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 40,
                margin: EdgeInsets.all(12),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      Globals.technologies =value;
                    });
                  },
                  decoration: InputDecoration(

                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    hintText: "5 - Programmers",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(2)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Project Discription",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 40,
                margin: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: TextField(
                onChanged: (value){
              setState(() {
              Globals.proDescription =value;
              });
              },
                  decoration: InputDecoration(

                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Project Discription",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
