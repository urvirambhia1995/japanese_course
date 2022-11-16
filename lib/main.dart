import 'package:flutter/material.dart';
import 'package:japanese_course/Help.dart';
import 'package:splash_view/splash_view.dart';
import 'package:japanese_course/MyDailyJournal.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(
        backgroundColor: Colors.black,
        logo: Image.network(
            "https://thumbs.gfycat.com/UnevenWiltedBluewhale-size_restricted.gif"),
        done: Done(MyHomePage()),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Widget _buildPopupDialog(BuildContext context) {
  //   return Container(
  //     // height: MediaQuery.of(context).size.width,
  //     // width: MediaQuery.of(context).size.width/1.5,
  //     // alignment: Alignment.topRight,
  //     // padding: EdgeInsets.all(10),
  //     // // child:Dialog(
  //     // //   backgroundColor: Colors.blue.shade50,
  //     // //   child:  Column(
  //     // //     mainAxisSize: MainAxisSize.min,
  //     // //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     // //     children: <Widget>[
  //     // //       ElevatedButton.icon(onPressed: (){},icon: Image.asset('assets/book.png',height: 8,),
  //     // //         label: Text('Profile',style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 10),),
  //     // //         style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue.shade50)),),
  //     // //       ElevatedButton.icon(onPressed: (){},icon: Image.asset('assets/book.png',height: 8,),
  //     // //           label: Text('My Daily Journal',style: TextStyle(backgroundColor: Colors.transparent,color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 10),),
  //     // //           style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue.shade50))),
  //     // //       ElevatedButton.icon(onPressed: (){},icon: Image.asset('assets/book.png',height: 8,),
  //     // //           label: Text('Home',style: TextStyle(backgroundColor: Colors.transparent,color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 10),
  //     // //           ),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue.shade50))),
  //     // //       ElevatedButton.icon(onPressed: (){},icon: Image.asset('assets/book.png',height: 8,),
  //     // //           label: Text('Settings',style: TextStyle(backgroundColor: Colors.transparent,color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 10),)
  //     // //           ,style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue.shade50))
  //     // //       ),
  //     // //       ElevatedButton.icon(onPressed: (){
  //     // //         Navigator.push(context, MaterialPageRoute(builder: (context) => Help_page()));
  //     // //
  //     // //       },icon: Image.asset('assets/book.png',height: 8,),
  //     // //         label: Text('Get Help',style: TextStyle(backgroundColor: Colors.transparent,color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 10),),
  //     // //           style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue.shade50))
  //     // //         ,)
  //     // //     ],
  //     // //   )
  //     // // ),
  //     child: PopupMenuButton(itemBuilder: (BuildContext context) {  },
  //     child:PopupMenuItem(),),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var menuitem = [
      {'title': 'Profile', 'icon': Image.asset('assets/book.png')},
      {'title': 'My Daily Journal', 'icon': Image.asset('assets/book.png')},
      {'title': 'Home', 'icon': Image.asset('assets/book.png')},
      {'title': 'Settings', 'icon': Image.asset('assets/book.png')},
      {'title': 'Get Help', 'icon': Image.asset('assets/book.png')}
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'JPCourse',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900),
          ),
          actions: [
            Container(
              height: MediaQuery.of(context).size.width / 6,
              width: MediaQuery.of(context).size.width / 6.5,
              margin: EdgeInsets.fromLTRB(50, 8, 2, 5),
              child: Card(
                color: Colors.white,
                elevation: 2,
                shadowColor: Colors.blue.shade900,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyDailyJournal()));
                  },
                  child: Image.asset(
                    'assets/book.png',
                    color: Colors.blue.shade900,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: MaterialStateProperty.all(5),
                    shadowColor:
                        MaterialStateProperty.all(Colors.grey.shade100),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width / 6,
              width: MediaQuery.of(context).size.width / 6.5,
              margin: EdgeInsets.fromLTRB(0, 8, 15, 5),
              child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shadowColor: Colors.blue.shade900,
                  child: PopupMenuButton(
                    offset: Offset(0,40),
                      color: Colors.blue.shade50,
                      icon: Image.asset(
                        "assets/menu.png",
                        color: Colors.blue.shade900,
                      ),
                      itemBuilder: (context) {
                        return menuitem.map((e) {
                          return PopupMenuItem(
                              padding: EdgeInsets.zero,
                              value: e['title'].toString(),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.2,
                                height: MediaQuery.of(context).size.width / 9,
                                child: ListTile(
                                  leading: e['icon'] as Widget,
                                  title: Text(
                                    e['title'].toString(),
                                    style: TextStyle(

                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ),
                              ));
                        }).toList();
                      })),
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text('Hi, Jessica!',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold))),
              Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        wordSpacing: 2,
                        fontSize: 12),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        side:
                            BorderSide(width: 0.3, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)),
                    shadowColor: Colors.blue.shade900,
                    child: Column(
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data")
                      ],
                    ),
                  )),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(10),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Help_page()));
            },
            color: Colors.yellow.shade700,
            child: Text(
              'See My PhraseBook',
              style: TextStyle(
                  color: Colors.blue.shade900, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
