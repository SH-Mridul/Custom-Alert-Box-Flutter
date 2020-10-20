// import 'package:MusicApp/pages/PageOne.dart';
// import 'package:MusicApp/pages/PageTwo.dart';
import 'dart:ui';

import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.purple,
        appBar : AppBar(
          title:Text('Custom Alert Info',style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple,
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
               onTap: (){
                  showDialog(context: context,builder:(context){
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child:Stack(
                      overflow:Overflow.visible,
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                      Container(
                        height:250,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                               SizedBox(
                                height:50
                              ),

                              Text(
                                'Hi,I\'m Mridul',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff070707),
                                  fontSize: 23
                              ),),

                              SizedBox(
                                height:10
                              ),

                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                 style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  color: Color(0xff070707),
                                  fontSize: 14
                              ),),

                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: -50,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius:50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Image.asset('images/profile.jpg',height: 100,),
                            ),
                        ),
                      ),
                        ],
                      ),
                    );
                  });
               },
                child: Icon(
                  Icons.info,
                  size: 26.0,
                ),
              )
            ),
          ],
        ),
        body: Container(
          child:Center(
            child : Text('For showing up an alert box click appbar plus icon.')
          ),
        ),
      )
    );
  }
}
