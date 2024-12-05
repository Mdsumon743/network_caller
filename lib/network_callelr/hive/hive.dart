import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveData extends StatefulWidget {
  const HiveData({super.key});

  @override
  State<HiveData> createState() => _HiveDataState();
}

class _HiveDataState extends State<HiveData> {

final myBox = Hive.box('mybox');
  readData(){
 debugPrint("=== ${myBox.get(71)}");
  }
  writeData(){
      myBox.put(71, "Sumon");
     
  }
  deleteData(){
    myBox.delete(71);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                readData();
              },
              color: Colors.green,
              child: const Text('Read'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                writeData();
              },
              child: const Text('Write'),
            ),
            MaterialButton(
              
                 
              onPressed: () {
                deleteData();
              },
              color: Colors.red,
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
