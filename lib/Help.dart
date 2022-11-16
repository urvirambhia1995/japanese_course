import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        // appBar: AppBar(
        //   leading: Card(
        //     elevation: 5,
        //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        //       color: Colors.white,
        //       child: Icon(Icons.arrow_back_rounded,color: Colors.black,)),
        //   backgroundColor: Colors.blue.shade900,
        //   title: Text('Get Help',style: TextStyle(color: Colors.white),),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 1.5,
              width: double.infinity,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                color: Colors.blue.shade900,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 50,width: 50,
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        margin: EdgeInsets.fromLTRB(10,8,0,190),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.blue.shade900,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10,15,0,0),
                        child: Text('Get Help',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.grey.shade200),borderRadius: BorderRadius.circular(10)),
              child: TextButton( onPressed: () {  },
                child: Text('Course Free Trail',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.grey.shade200),borderRadius: BorderRadius.circular(10)),
              child: TextButton( onPressed: () {  },
                child: Text('Course Refund Policy',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.grey.shade200),borderRadius: BorderRadius.circular(10)),
              child: TextButton( onPressed: () {  },
                child: Text('Reset Password',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Have more questions?',style: TextStyle(color: Colors.grey.shade500,fontSize: 15,fontWeight: FontWeight.bold),),
              TextButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contactpage()));

              },clipBehavior: Clip.hardEdge,
              child: Text('Contact Us!',style: TextStyle(color: Colors.blue.shade900),),),
            ],
          ),
        ),
      ),
    );
  }
}
