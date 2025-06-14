// Step 4 : sperate the Home widjet into its own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

// Step 5 : container,column, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // step 7 : Button widgets
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: (){
              print("Button Pressed");
            },
            child :Text(
              "Click Me", 
              style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print("Button Pressed 2");
            },
            child: const Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
              side: const BorderSide(color: Colors.red, width: 2),
            ),
            onPressed: () {
              print("Button Pressed 3");
            },
            child: const Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print("Button Pressed 4");
            },
            child: const Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),    
    );
  }
}

    //step 6: Imgage widgets
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [Image.asset("assets/images/katuy.jpg", width: 150, height: 150),
    //   const SizedBox(height: 10),
    //   Image.network("https://picsum.photos/250?image=9", 
    //   width: 150, 
    //   height: 150),
    //   ],
    //   );
    // return Column(
    //   children: [
    //     Container(
    //       color: Colors.orangeAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello Flutter",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orangeAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello Flutter",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orangeAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello Flutter",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
