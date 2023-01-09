import 'package:flutter/material.dart';
import 'package:gst/globals.dart';
class edu extends StatefulWidget {
  const edu({Key? key}) : super(key: key);

  @override
  State<edu> createState() => _eduState();
}

class _eduState extends State<edu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education",
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
        margin: EdgeInsets.all(12),
        child: Container(
            height: 512,
            width: 400,
            color: Colors.white,
            child: Column(
                children: [
            Padding(padding: EdgeInsets.all(10)),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "    Course/Degree",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            )),
        Container(
          height: 50,
          margin: EdgeInsets.all(12),
          child: TextField(
            onChanged: (value){
              setState(() {
                Globals.course = value;
              });
            },
            decoration: InputDecoration(

              border: OutlineInputBorder(),
              hintText: "B.Tech Information Technology",
              hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ),
                  Padding(padding: EdgeInsets.all(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    School/Collage/University",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(12),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          Globals.collage= value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Bhagwan Mahaveer University",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    School/Collage/University",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(12),
                    child: TextField(onChanged: (value){
                      setState(() {
                        Globals.per = value;
                      });
                    },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "70% (or) 7.0 CGPA",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    Year of Pass",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(12),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          Globals.passingyear = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "1219",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
  ],
      ),
    ),
      ),backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
