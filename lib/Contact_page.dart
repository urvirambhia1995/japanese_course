import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({Key? key}) : super(key: key);

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 2, 10),
          child: Card(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            elevation: 5,
            shadowColor: Colors.grey.shade500,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade200, width: 1),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        title: Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 12),
          child: Text(
            'Contact Us',
            style: TextStyle(
                color: Colors.blue.shade900, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'FullName',
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                )),
            Card(
                color: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Mochammad Rheza',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                )),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                )),
            Card(
                color: Colors.blue.shade50,
                child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Rheza@gmail.com',
                          hintStyle: TextStyle(color: Colors.black54)),
                    ))),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Issues',
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                )),
            Card(
              color: Colors.blue.shade50,
              child: DropdownButton(
                value: dropdownvalue,
                icon: Align(alignment: Alignment.topRight,child: const Icon(Icons.keyboard_arrow_down)),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Container(width: MediaQuery.of(context).size.height/2.5,padding: EdgeInsets.only(left: 10),child: Text(items,style: TextStyle(color: Colors.black54),)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Detail',
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                )),
            Card(
                color: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                        hintText: 'lorem ipsum',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BottomAppBar(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Send',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue.shade900, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.yellow.shade700),
      ),
    );
  }
}
