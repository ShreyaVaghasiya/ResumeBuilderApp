import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'globals.dart';

class dec extends StatefulWidget {
  const dec({Key? key}) : super(key: key);

  @override
  State<dec> createState() => _decState();
}

class _decState extends State<dec> {
  bool result = false;
  TextEditingController date4Control = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Declaration",
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
          height: 460,
          width: 400,
          color: Colors.white,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "    Declaration",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(padding: EdgeInsets.all(20)),
                  Switch(
                    value: result,
                    onChanged: (value) {
                      setState(() {
                        result = value;
                      });
                    },
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              (result == true)
                  ? Column(
                    children: [
                      Align(
                          alignment: Alignment(-0.8,-0.3),
                          child: Image(
                            image:
                            AssetImage('asset/myimages/th-_7_.png'),
                            height: 50,
                            width: 50,
                          )),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              Globals.declare = value;
                            });
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Description",
                            hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              Text("Date",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                              Container(
                                height: 50,
                                width: 100,
                                margin: EdgeInsets.all(20),
                                child: TextField(
                                  controller: date4Control,


                                  onTap: () async{
                                    DateTime? declaredate = await showDatePicker(context: context,
                                      initialDate:DateTime.now(),
                                      firstDate: DateTime(1990),
                                      lastDate: DateTime.now(),
                                    );

                                    if(Globals.declaredate!=null)
                                    {
                                      setState(() {
                                        date4Control.text = DateFormat('dd-MM-YYYY').format(Globals.declaredate);
                                        Globals.declaredate = date4Control.text;
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
                              Text("Interview Venue",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                              Container(
                                height: 50,
                                width: 100,
                                margin: EdgeInsets.all(20),
                                child: TextField(
                                  onChanged: (value){
                                    setState(() {
                                      Globals.venue = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Eg.Surat",
                                    hintStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ),),
                            ],
                          )

                        ],
                      )
                    ],
                  )
                  : Container(),
              Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Submit All Data",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
