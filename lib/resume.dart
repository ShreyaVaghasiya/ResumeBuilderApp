import 'package:flutter/material.dart';

class Working extends StatefulWidget {
  const Working({Key? key}) : super(key: key);

  @override
  State<Working> createState() => _WorkingState();
}

class _WorkingState extends State<Working> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('pdf');
              },
              icon: Icon(
                Icons.picture_as_pdf,
                size: 30,
                color: Colors.white,
              ))
        ],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Build Options",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 0.7,
                  )),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Contact Info",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('cf');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.work_outline_sharp,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Carrier Objective",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('co');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.people,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Personal Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('pd');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Education",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('ed');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_pin_outlined,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Experinces",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('ex');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.developer_board,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Technical Skills",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('ts');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.accessibility_new_outlined,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Interest/Hobbies",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('hb');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.book_online_outlined,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Projects",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('pr');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.card_giftcard_outlined,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Achievements",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('am');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_add_alt,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "refernces",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('rf');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black26, width: 3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.contact_page,
                    size: 45,
                    color: Colors.black,
                  ),
                  Text(
                    "Declaration",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('de');
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
