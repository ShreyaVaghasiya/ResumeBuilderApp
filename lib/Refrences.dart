import 'package:flutter/material.dart';

import 'globals.dart';
class ref extends StatefulWidget {
  const ref({Key? key}) : super(key: key);

  @override
  State<ref> createState() => _refState();
}

class _refState extends State<ref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("References",
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
            height: 450,
            width: 400,
            color: Colors.white,
            child: Column(
                children: [
            Padding(padding: EdgeInsets.all(10)),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "    Reference Name",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            )),
        Container(

          margin: EdgeInsets.all(20),
          child: TextField(
            onChanged: (value){
              setState(() {
                Globals.refname = value;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Jyoti Basu",
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    Reference Designantion",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(

                    margin: EdgeInsets.all(20),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          Globals.refdesg = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Flutter Developer ID - 262626",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    Organization/Institute",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(

                    margin: EdgeInsets.all(20),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          Globals.refcomp = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Green Energy Pvt Ltd.",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
        ],
      ),
    ),
      ),
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
