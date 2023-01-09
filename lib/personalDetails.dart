import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gst/globals.dart';
import 'package:intl/intl.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  TextEditingController dateControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details",
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
          height: 700,
          width: 400,
          color: Colors.white,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    DOB",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.all(12),
                child: TextFormField(
                  controller: dateControl,


                  onTap: () async{
                    DateTime? dob = await showDatePicker(context: context,
                        initialDate:DateTime.now(),
                        firstDate: DateTime(1990),
                        lastDate: DateTime.now(),
                    );

                    if(Globals.dob!=null)
                      {
                        setState(() {
                          dateControl.text = DateFormat('dd-MM-YYYY').format(Globals.dob);
                          Globals.dob = dateControl.text;
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
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Marital Status",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              RadioListTile(
                  title: Text(
                    "Single",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  value: "Single",
                  groupValue: Globals.s,
                  onChanged: (value) {
                    setState(() {
                      Globals.s = value.toString();
                    });
                  }),
              RadioListTile(
                  title: Text(
                    "Married",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  value: "Married",
                  groupValue: Globals.s,
                  onChanged: (value) {
                    setState(() {
                      Globals.s = value.toString();
                    });
                  }),
              Padding(padding: EdgeInsets.all(5)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Languages Known",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text("English", style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),),
                  value: Globals.Lang, onChanged: (value) {
                setState(() {
                  Globals.Lang = value!;
                });
              }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text("Hindi", style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),),
                  value: Globals.Lang2, onChanged: (value) {
                setState(() {
                  Globals.Lang2 = value!;
                });
              }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text("Gujarati", style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),),
                  value: Globals.Lang3, onChanged: (value) {
                setState(() {
                  Globals.Lang3 = value!;
                });
              }),
              Padding(padding: EdgeInsets.all(5)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Nationality",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.all(12),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      Globals.Nation = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Indian",
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
      ),
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
