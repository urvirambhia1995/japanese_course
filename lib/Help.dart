import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japanese_course/CourseFreeTrialPage.dart';
import 'package:japanese_course/CourseRefundPolicy.dart';
import 'package:japanese_course/ResetPasswrod.dart';

import 'Contact_page.dart';

class Help_page extends StatefulWidget {
  const Help_page({Key? key}) : super(key: key);

  @override
  State<Help_page> createState() => _Help_pageState();
}

class _Help_pageState extends State<Help_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              SizedBox(
                 height: MediaQuery.of(context).size.width *0.65,
                 width: double.infinity,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  color: Colors.blue.shade900,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Expanded(
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.blue.shade900,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text(
                                    'Get Help',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('We are here to help.',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height*0.1,width: MediaQuery.of(context).size.width*0.6,
                          padding: EdgeInsets.all(15),
                          child: TextField(obscureText: true,decoration: InputDecoration(filled:true,fillColor:Colors.white,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),hintText: 'Search',prefixIcon: Icon(Icons.search_sharp),),))
                    ],
                  ),
                ),
              ),

            Flexible(
              child: Container(
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseFreeTrialPage()));
                    },
                    child: Text(
                      'Course Free Trail',
                      style: TextStyle(
                          color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CourseRefundPloicy()));
                },
                child: Text(
                  'Course Refund Policy',
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPassword()));
                },
                child: Text(
                  'Reset Password',
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Have more questions?',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contactpage()));
                },
                clipBehavior: Clip.hardEdge,
                child: Text(
                  'Contact Us!',
                  style: TextStyle(color: Colors.blue.shade900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
