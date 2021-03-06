import 'package:flutter/material.dart';
const strText="Mobile music is music which is downloaded or streamed to mobile phones and played by mobile phones. Although many phones play music as ringtones, true music phones generally allow users to stream music or download music files over the internet via a WiFi connection or 3G cell phone connection. Music phones are also able to import audio files from their PCs. The case of mobile music being stored within the memory of the mobile phone is the case similar to traditional business models in the music industry. It supports two variants: the user can either purchase the music for outright ownership or access entire libraries of music via a subscription model. In this case the music files are available as long as the subscription is active.";


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,

      drawer: Drawer(
        child:ListView(
          children:<Widget>[
          ListTile(
            trailing:Icon(Icons.developer_board),
            title:Text("Welcome to the music App"),
            leading: Icon(Icons.sentiment_satisfied),
          ),
          ]
        )
      ),
      appBar: AppBar(
        title:Text("Music App"),

      ),
      body: Center(
        child:Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.brown[40],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,3),
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 5,
                blurRadius: 7,


              ),

            ],
          ),
          child:SingleChildScrollView(
            padding:EdgeInsets.all(30.0),
            
            child:Text(strText),
          )
        ),
      ),
      bottomNavigationBar: 
      BottomNavigationBar(
        iconSize: 30,
        currentIndex: _currentindex,
        backgroundColor: Colors.greenAccent,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.work),
      title: Text("To Do"),backgroundColor: Colors.orange),
         
         BottomNavigationBarItem(icon: Icon(Icons.library_music),
      title: Text("Music"),backgroundColor: Colors.yellowAccent),

      BottomNavigationBarItem(icon: Icon(Icons.person),title:Text("Profile"),backgroundColor: Colors.brown)
      ] ,
      onTap: (index){
        setState(() {
          _currentindex=index;
          print(_currentindex);
        });

      },
     
      
      ),

    );
  }
}