import 'package:flutter/material.dart';
import 'package:network_caller/network_callelr/service/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Caller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    NetworkCaller networkCaller = NetworkCaller();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              networkCaller.getRequest(
                  "https://watch-points.vercel.app/api/users/get-me",
                  token:
                      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NzRlN2I1NGEyODg5NjNlZTdmMTNiZTQiLCJlbWFpbCI6InN1bW9uaG9zc2Fuc21AZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJpYXQiOjE3MzMzNzIzOTIsImV4cCI6MTczNDIzNjM5Mn0.SYNMTOrsODuQeC64qPDjWFHXOhHpavryLK73v0-u7KEå");
            },
            child: const Text("Clik to api call ")),
      ),
    );
  }
}
