import 'package:flutter/material.dart';
 // Step 4 : sperate the Home widjet into its own file
import 'screen/home.dart';
void main() {
  // Step 1: appBar and bodyflutter
  //runApp(const MyApp());

  //const app = MaterialApp(title: "My Title", home: Text("Hello World"));
  //runApp(app);
  //runApp(
  //  MaterialApp(
  //    title:"My Title",
  //    home: Scaffold(
  //      appBar: AppBar(
  //       title: Text("My App"),
  //        backgroundColor: Colors.blue,
  //        centerTitle: true,
  //      ),
  //      body: Text("Hello Flutter"),
  //    )
  //  )
  //);

  //Step 2: Stateless widget
  runApp(
    MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: const Color.fromARGB(255, 243, 33, 33),
          centerTitle: true,
        ),
        body: Home(),
      ),
    ),
  );
}


// Step 2: Stateless widget

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text("Hello Flutter");
//   }


// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//       color: Colors.blueAccent,
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//       padding: const EdgeInsets.all(20),
//       child: Text(
//         "Hello Flutter",
//         style: TextStyle(fontSize: 30, letterSpacing: 3),
//         ),
//       ),  
//     );
//   }
// }