import 'package:flutter/material.dart';

///  Similarity With Native:
///    1. BodyOfHome Act like a Fragment In Activity.
///    2. Every Fragment has it's own state & that would be handle by State<ClassName> class.
/// Why StatefulWidget: Because it will update UI Dynamically whenever it needs:
class BodyOfHome extends StatefulWidget {
  const BodyOfHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BodyOfHome> createState() => StateOfHomePage();
}

///This will handle the state Of UI Update:
class StateOfHomePage extends State<BodyOfHome> {
  int _increment = 0;

  void _incrementCounter() {
    setState(() {
      _increment++;
    });

    void _decrementCounter() {
      setState(() {
        _increment--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [titleSection, buttonSection],
      ),
    );
  }

  //Design of Title only
  Widget titleSection = Container(
    // Making a global padding for Root view group of Title Section:
    padding: const EdgeInsets.all(25),
    //Ever
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 2),
                child: const Text(
                  "Secondary Header",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Text(
                "Secondary Header",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        const Icon(
          Icons.star,
          color: Colors.red,
        ),
        Container(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "41",
              style: TextStyle(color: Colors.black),
            ))
      ],
    ),
  );

  //Design of Button Section:
  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ButtonClass.buildButtonModel(Colors.blue, Icons.call, "Call"),
      ButtonClass.buildButtonModel(Colors.blue, Icons.route, "Route"),
      ButtonClass.buildButtonModel(Colors.blue, Icons.share, "Share"),
    ],
  );
}

class ButtonClass {
  //Building Button Model:
  static Column buildButtonModel(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color),
          ),
        )
      ],
    );
  }
}
