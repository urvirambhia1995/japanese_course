import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({Key? key}) : super(key: key);

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.fromLTRB(10,5,2,10),
          child: Card(
            child: Icon(Icons.arrow_back,color: Colors.black,),
            elevation: 5,
            shadowColor: Colors.grey.shade500,
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey.shade200,width: 1),borderRadius: BorderRadius.circular(10)),
          ),
        ),
        title:Container(
          margin: EdgeInsets.fromLTRB(0,10,0,12),
          child: Text('Contact Us',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),), ),
      ),

      body: Column(children: [],),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BottomAppBar(
            elevation: 5,child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Send',textAlign:TextAlign.center,style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
            ),color: Colors.yellow.shade700),
      ),
    );
  }
}
