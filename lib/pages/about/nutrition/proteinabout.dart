import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../dashboard.dart';

class ProteinAbout extends StatefulWidget {
  @override
  _ProteinAboutState createState() => _ProteinAboutState();
}

class _ProteinAboutState extends State<ProteinAbout> {
  @override
  Widget build(BuildContext context) {
    final mainabout = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Protein',
          style: TextStyle(
            color: Color.fromRGBO(240, 75, 76, 1),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Enter Protein info',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
    final navbar = AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        tooltip: 'Main Menu',
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
        },
      ),
      title: Text(
        "Health Scale",
        style: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontFamily: 'Inter',
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color.fromRGBO(61, 96, 152, 1),
    );
    return Scaffold(
        backgroundColor: Color.fromRGBO(33, 49, 89, 1),
        appBar: navbar,
        body: Center(
            child: SingleChildScrollView(
                child: Container(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
          mainabout,
        ])))));
  }
}
