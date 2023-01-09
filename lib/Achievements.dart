import 'package:flutter/material.dart';

import 'globals.dart';

class Achieve extends StatefulWidget {
  const Achieve({Key? key}) : super(key: key);

  @override
  State<Achieve> createState() => _AchieveState();
}

class _AchieveState extends State<Achieve> {
  List<String> Win = <String>[];
  List<TextEditingController> myController1 = <TextEditingController>[];
  int i = 0;

  Row myAchieve(int i) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 280,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Exceed Sales 17% Average",
              hintStyle: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w700)
            ),
            controller: myController1[i],
            onChanged: (val) {
              setState(() {
                Globals.Win![i] = val;
              });
            },
          ),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                Win.remove(Win[i]);
                myController1.removeAt(i);
              });
            },
            icon: Icon(Icons.delete)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Achievements",
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
          child: Column(children: [
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "Enter Achievements",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ), Padding(padding: EdgeInsets.all(10)),
            for (int i = 0; i < myController1.length; i++) myAchieve(i),
            Padding(padding: EdgeInsets.all(20)),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(5)),
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    setState(() {
                      myController1.add(TextEditingController());
                     Win.add("");
                    });
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.grey,
                  )),
            ),
            Center(
              child: Text("$Win"),
            )
          ]),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
    );
  }
}
