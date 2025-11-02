import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {

  List<String> names = ["Tusher","Tanvir","Nafis","Richard","Mahin"];
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        // Lecture Part-03
        appBar: AppBar(title: Text("Home", style: TextStyle(color: Colors.white),), leading: Icon(Icons.menu,color: Colors.white,),
          actions: [Icon(Icons.logout,color: Colors.white, fontWeight: FontWeight.bold)],
          backgroundColor: Colors.deepPurple[600],),

        body: SafeArea(
          // Lecture Part-01
          // child: ListView(
          // scrollDirection: Axis.horizontal,
          // children: [
          //   Container(width: 500, color: Colors.purple[100],),
          //   Container(width: 500, color: Colors.purple[200],),
          //   Container(width: 500, color: Colors.purple[300],),
          //   Container(width: 500, color: Colors.purple[400],),
          //   Container(width: 500, color: Colors.purple[500],),
          // ],
        // ),

          // Lecture Part-02
          child: ListView.builder(
            itemCount: names.length,
              itemBuilder: (context, index) => ListTile(title: Text(names[index]),
                // Lecture Part-04
                onTap: (){
                Fluttertoast.showToast(msg: index.toString());
              },)),
        ),
      ),
    );
  }
}



// HomeWork
// Create a Class and include following items
// 1. Name
// 2. Photo base64
// 3. Class
// 4. Student ID
// Container height 200, photo, Name, ID, Roll.