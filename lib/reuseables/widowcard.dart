import 'package:beam_ui1/models/widow_brain.dart';
import 'package:flutter/material.dart';
import '../screens/widow_details.dart';

WidowBrain widowsBrain = WidowBrain();

class WidowCard extends StatelessWidget {
  final int index;
  const WidowCard({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(113, 113, 113, 0.2),
            offset: Offset(2, 2),
            spreadRadius: 0,
            blurRadius: 4.0,
          ),
        ],
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(7.0)),
                image: DecorationImage(
                  image: AssetImage(widowsBrain.widowBrain[index].widowImage!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          buildRow("Name", widowsBrain.widowBrain[index].widowName!),
          buildRow("Date of Birth", "03/05/1787"),
          buildRow("Address", "03/05/1787"),
          buildRow("Phone Number", "+234-233-222"),
          buildRow("State", "Ondo"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WidowDetails()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "View details",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          color: Color(0xff602BF8),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 6.0,
                      color: Color(0xff602BF8),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

Widget buildRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Rubik",
              fontSize: 7.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff111111),
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontFamily: "Rubik",
              fontSize: 7.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff656565),
            ),
          ),
        ),
      ],
    ),
  );
}
