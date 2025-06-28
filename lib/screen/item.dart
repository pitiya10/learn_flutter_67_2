import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';
// Step 12 : Use google fonts
import 'package:google_fonts/google_fonts.dart';

// Step 17 : Routing
import 'package:learn_flutter_67_2/screen/addForm.dart';
class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: personList.length,
//       itemBuilder: (context, index) {
//         return Container(
//           decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 250, 157, 236),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
//           padding: const EdgeInsets.all(20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     personList[index].name,
//                     // style: const TextStyle(
//                     //   fontSize: 24,
//                     //   color: Colors.white,
//                     //   fontWeight: FontWeight.bold,
//                     // ),

//                     // Step 12: Use google fonts
// style: GoogleFonts.kanit(
//                       fontSize: 24,
//                       color: Color.fromARGB(255, 6, 6, 6),
//                     ),
//                   ),
//                   Text(
//                     "job:${personList[index].job.title}",
//                     style: GoogleFonts.kanit(
//                       fontSize: 18,
//                       color: Color.fromARGB(255, 13, 13, 13),
//                     ),
//                   ),
//                   Text(
//                     personList[index].age.toString(),
//                     style: GoogleFonts.kanit(
//                       fontSize: 18,
//                       color:  Color.fromARGB(255, 12, 12, 12),
//                     ),
//                   ),
//                   Image.asset(
//                     personList[index].job.image,
//                     width: 50,
//                     height: 50,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );

// Step 17 : Routing
return Column(
  children: [
    Expanded(
      child: ListView.builder(
        itemCount: personList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: personList[index].job.color,
            ),
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      personList[index].name,
                      style: GoogleFonts.kanit(
                        fontSize: 30,
                        color: const Color(0xFFFFFFFF), // <-- แก้โค้ดสีผิดพลาด
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Age : ${personList[index].age}, Job : ${personList[index].job.title}",
                      style: GoogleFonts.prompt(
                        fontSize: 20,
                        color: const Color(0xFF707070), // <-- แก้โค้ดสีให้ถูกต้อง
                      ),
                    ),
                    Image.asset(
                      personList[index].job.image,
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ),
    SizedBox(
      width: 100,
      height: 100,
      child: IconButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AddForm()),
          );
        },
        icon: Icon(Icons.add, size: 40, color: Colors.pinkAccent),
      ),
    ),
  ],
);
}
}