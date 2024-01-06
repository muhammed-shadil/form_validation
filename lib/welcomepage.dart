import 'package:flutter/material.dart';
import 'package:form_validation/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Center(
            child: Text(
          "Octupus",
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        )),
        actions: [
          const Icon(
            Icons.add,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text("login"))
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * .8,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: const Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.redAccent, fontSize: 45, fontFamily: "first"),
            ),
          ),
        ),
      ),
    );
  }
}
