//Step 13 : TextFormField for input
//Step 14 : DropdownButton for job selection
import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}
class _AddFormState extends State<AddForm> {
  Object? get values => null;

@override
Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person", 
      home : Scaffold(appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor:Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<Job>(
                items: Job.values.map((key) {
                  return DropdownMenuItem<Job>(value: key,child: Text(key.title));
                }).toList(),
                onChanged: (value) {
                  print(values);
                  },
              ),
              const SizedBox(height: 20),
             FilledButton(
                  onPressed:() {},
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                  ),
                  child:Text(
                    "Submit", style: TextStyle(color: Colors.white,fontSize: 20) 
                  ),
                )
              ], 
          ),
        ),
      ),
      );
  }
}