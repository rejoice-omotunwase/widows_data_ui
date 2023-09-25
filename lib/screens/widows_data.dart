import 'package:flutter/material.dart';
import '../display/portrait_view.dart';

class WidowsData extends StatefulWidget {
  const WidowsData({Key? key}) : super(key: key);

  @override
  State<WidowsData> createState() => _WidowsDataState();
}

class _WidowsDataState extends State<WidowsData> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black87,
        ),
        title: const Text(
          "Widows Data",
          style: TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
              color: Color(0xff111111)),
        ),
      ),
      // body: orientation == Orientation.portrait
      //     ? PortraitView()
      //     : LandscapeView(),
      body: const PortraitView(),
    );
  }
}
