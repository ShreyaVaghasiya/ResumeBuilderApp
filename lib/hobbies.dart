import 'package:flutter/material.dart';

import 'globals.dart';

class hobby extends StatefulWidget {
  const hobby({Key? key}) : super(key: key);

  @override
  State<hobby> createState() => _hobbyState();
}

class _hobbyState extends State<hobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interest/Hobbies",
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
            height: 350,
            width: 400,
            color: Colors.white,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "    What You Do in Your Free Time?",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    maxLines: 10,
                    onChanged: (value){
                      setState(() {
                        Globals.hobby;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Ex.Dance,Cricket",
                      hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
