import 'package:flutter/material.dart';
import 'package:gst/globals.dart';
import 'package:intl/intl.dart';
import 'dart:io';
class exp extends StatefulWidget {
  const exp({Key? key}) : super(key: key);

  @override
  State<exp> createState() => _expState();
}

class _expState extends State<exp> {
  TextEditingController date1Control = TextEditingController();
  TextEditingController date2Control = TextEditingController();
  TextEditingController date3Control = TextEditingController();
  bool Logic = false;
  bool Logic1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience",
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
      body:Container(
        margin: EdgeInsets.all(12),
        child: Container(
            height: 500,
            width: 400,
            color: Colors.white,
            child: Column(
                children: [
            Padding(padding: EdgeInsets.all(10)),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "    Company Name",
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
                Globals.company = value;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "New Enterprise San Fransico",
              hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ), Padding(padding: EdgeInsets.all(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    School/Collage/Institute",
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
                          Globals.comptype = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Quality Test Engineer",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ), Padding(padding: EdgeInsets.all(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    Roles(Optional)",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    // height: 50,
                    margin: EdgeInsets.all(12),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          Globals.role = value;
                        });
                      },
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Working with Team Members to come up with New Concepts and Products Analysits",
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
                        "    Employee Status",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),

                  Row(
                    children: [
                     Radio(value: "Previously Employed",
                     groupValue:Globals.pe,
    onChanged: (value) {
      setState(() {
        Logic = true;
        Logic1 = false;
        Globals.pe = value.toString();
      });
    },
    ) ,
                      Text("Previously Employed",style: TextStyle(color: Colors.grey),),
                      Radio(value: "Currently Employed",
                        groupValue:Globals.pe,
                        onChanged: (value) {
                          setState(() {
                            Globals.pe = value.toString();
                            Logic1 = true;
                            Logic = false;
                          });
                        },
                      ) ,
                      Text("Currently Employed",style: TextStyle(color: Colors.grey),)
                    ],
                  ),   Container(
                    height: 10,
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
                      ),
                    ),
                  ),
                  (Logic==true)?Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [

                          Text("Date Joined",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.all(12),
                            child: TextField(
                              controller: date1Control,


                              onTap: () async{
                                DateTime? datejoin1 = await showDatePicker(context: context,
                                  initialDate:DateTime.now(),
                                  firstDate: DateTime(1990),
                                  lastDate: DateTime.now(),
                                );

                                if(Globals.datejoin1!=null)
                                {
                                  setState(() {
                                    date1Control.text = DateFormat('dd-MM-YYYY').format(Globals.datejoin1);
                                    Globals.datejoin1 = date1Control.text;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),),
                        ],
                      ),Column(
                        children: [
                          Text("Date Exit",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.all(12),
                            child: TextField(
                              controller: date2Control,


                              onTap: () async{
                                DateTime? dateexit = await showDatePicker(context: context,
                                  initialDate:DateTime.now(),
                                  firstDate: DateTime(1990),
                                  lastDate: DateTime.now(),
                                );

                                if(Globals.dateexit!=null)
                                {
                                  setState(() {
                                    date2Control.text = DateFormat('dd-MM-YYYY').format(Globals.dateexit);
                                    Globals.dateexit = date1Control.text;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),),
                        ],
                      )

                    ],
                  ):(Logic1 == true)?Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text("Date Joined",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.all(12),
                            child: TextField(
                              controller: date3Control,


                              onTap: () async{
                                DateTime? datejoin2 = await showDatePicker(context: context,
                                  initialDate:DateTime.now(),
                                  firstDate: DateTime(1990),
                                  lastDate: DateTime.now(),
                                );

                                if(Globals.datejoin2!=null)
                                {
                                  setState(() {
                                    date3Control.text = DateFormat('dd-MM-YYYY').format(Globals.datejoin2);
                                    Globals.datejoin2 = date1Control.text;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),),
                        ],
                      )
                    ],
                  ):Container(),

        ],
      ),
    ),
      ),backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
