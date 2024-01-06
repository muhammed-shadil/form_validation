import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 125, 113, 113),
        actions: const [Icon(Icons.music_note_outlined)],
        title: const Text("octopus"),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            child: Center(child: Image.asset("images/first.jpeg")),
          ),
          const Center(
              child: Text(
            "Trending Now",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            child: Center(child: Image.asset("images/second.jpeg")),
          ),
          const Center(
              child: Text(
            "Blockbuster",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            child: Center(child: Image.asset("images/third.jpeg")),
          ),
          const Center(
              child: Text(
            "Breaking records",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
