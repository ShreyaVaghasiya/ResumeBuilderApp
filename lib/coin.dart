import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gst/globals.dart';
import 'package:image_picker/image_picker.dart';

class contactInfo extends StatefulWidget {
  const contactInfo({Key? key}) : super(key: key);

  @override
  State<contactInfo> createState() => _contactInfoState();
}

class _contactInfoState extends State<contactInfo> {
  getImage() async {
    XFile? pic = await ImagePicker()
        .pickImage(source: ImageSource.camera, maxHeight: 600, maxWidth: 600);
    if (pic != null) {
      setState(() {
        Globals.profile = File(pic.path);
      });
    }
  }

  bool op = false;
  bool pp = false;
  dynamic tc = Colors.white;
  dynamic tc1 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume WorkSpace",
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
            height: 50,
            width: double.infinity,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      op = true;
                      pp = false;
                      tc = Colors.orange;
                      tc1 = Colors.white;
                    });
                  },
                  child: Text(
                    "Contact",
                    style: TextStyle(
                        color: tc, fontWeight: FontWeight.w700, fontSize: 12),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      pp = true;
                      op = false;
                      tc1 = Colors.orange;
                      tc = Colors.white;
                    });
                  },
                  child: Text(
                    "Photo",
                    style: TextStyle(
                        color: tc1, fontWeight: FontWeight.w700, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          (op == true)
              ? Container(
                  margin: EdgeInsets.all(12),
                  child: Container(
                    height: 560,
                    width: 400,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                Globals.name = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                              icon: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.grey,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                Globals.email = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                              icon: Icon(
                                Icons.email,
                                color: Colors.grey,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                Globals.phoneno = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Phone",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                              icon: Icon(
                                Icons.wifi_calling_3_sharp,
                                color: Colors.grey,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                Globals.add1 = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Address",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                              icon: Icon(
                                Icons.add_location_rounded,
                                color: Colors.grey,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                Globals.add2 = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Address Line 2",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                Globals.add3 = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Address Line 3",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : (pp = true)
                  ? Container(
                      margin: EdgeInsets.all(50),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          (Globals.profile == null)
                              ? SizedBox(
                                  height: 112,
                                  width: 112,
                                  child: CircleAvatar(
                                    maxRadius: 60,
                                    backgroundColor: Colors.grey,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              : CircleAvatar(radius: 60,
                                  backgroundImage: FileImage(Globals.profile!),
                                ),
                          Align(
                              alignment: Alignment(0.5, 0.5),
                              child: Container(
                                height: 25,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      getImage();
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ))
                        ],
                      ),
                    )
                  : Container(),
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
