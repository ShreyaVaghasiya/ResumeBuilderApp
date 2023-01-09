import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gst/globals.dart';

class carrier extends StatefulWidget {
  const carrier({Key? key}) : super(key: key);

  @override
  State<carrier> createState() => _carrierState();
}

class _carrierState extends State<carrier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrier Objective",
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            child: Container(
              height: 300,
              width: 400,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "   Carrier Objective",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          Globals.carrier = value;
                        });
                      },
                      maxLines: 7,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Description",
                        hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            margin: EdgeInsets.all(12),
            child: Container(
              height: 150,
              width: 400,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "   Current Designation",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    (Experienced Candidate)",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          Globals.desg = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Ex.Software Engineer",
                        hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
