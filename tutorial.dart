import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: Center(
        //   child: Container(
        //     child: Icon(Icons.settings, size: 60, color: Colors.purple[200],),
        //   ),
        // ),

        body: Padding(
          padding: EdgeInsets.only(top: 25, left: 25,),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // children: [
            //   Expanded(
            //     flex: 2,
            //       child: Container(height: 200,width: 200, color: Colors.purple, )),
            //   Expanded(
            //       flex: 3,
            //       child: Container(height: 200,width: 200, color: Colors.purple[200],)),
            //   Expanded(
            //       flex: 2,
            //       child: Container(height: 200,width: 200, color: Colors.greenAccent,)),
            // ],

            // crossAxisAlignment: CrossAxisAlignment.stretch,

            //maximum height and width will be double.infinity
            children: [
              Container(height: 100, width: 100, color: Colors.purple,),
              Container(height: 100, width: 100, color: Colors.deepPurple,),
              Container(height: 100, width: 100, color: Colors.deepPurpleAccent,),
              // ElevatedButton(onPressed: ()=>{}, child: Text("data"))
            ],
          ),
        ),
      ),
    );
  }
}
