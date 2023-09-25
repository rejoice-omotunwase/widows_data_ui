import 'package:flutter/material.dart';

class WidowDetails extends StatefulWidget {
  const WidowDetails({Key? key}) : super(key: key);

  @override
  State<WidowDetails> createState() => _WidowDetailsState();
}

class _WidowDetailsState extends State<WidowDetails>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          dividerTheme: const DividerThemeData(
        indent: 20,
        endIndent: 20.0,
        thickness: 1.0,
        color: Color.fromRGBO(96, 43, 248, 0.3),
        space: 1.0,
      )),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                ))),
        // body: PageView(
        //   children: const [PersonalPage(), BankDetailsPage()],
        // ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(212, 225, 236, 0.3),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  color: const Color.fromRGBO(96, 43, 248, 1),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                controller: tabController,
                tabs: const [
                  Text(
                    "Personal",
                    style: TextStyle(
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "Bank Details",
                    style: TextStyle(
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  PersonalPage(),
                  BankDetailsPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PersonalPage extends StatelessWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20.0),
            child: const CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage("assets/images/widow10.jpg"),
            ),
          ),
          buildRow("Name", "Alisha Boe"),
          const Divider(),
          buildRow("Date of birth", "03/05/1787"),
          const Divider(),
          buildRow("Address", "03/05/1787"),
          const Divider(),
          buildRow("Phone Number", "+234-233-222"),
          const Divider(),
          buildRow("Employment status", "Unemployed"),
          const Divider(),
          buildRow("State", "Ondo"),
          const Divider(),
          buildRow("Hometown", "Ondo"),
          const Divider(),
          buildRow("Local government", "Ikate"),
          const Divider(),
          Container(
            margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10),
            child: const Text(
              "Other Personal Details",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Rubik",
                  fontSize: 20.0,
                  color: Color.fromRGBO(96, 43, 248, 1)),
            ),
          ),
          buildRow("Husband's name", "Samuel Boe"),
          const Divider(),
          buildRow("Husband's occupation", "03/05/1787"),
          const Divider(),
          buildRow("Year of marriage", "03/05/1787"),
          const Divider(),
          buildRow("Date of husband's death", "+234-233-222"),
          const Divider(),
          buildRow("Number of children", "10"),
          const Divider(),
          buildRow("Senatorial district", "Ondo"),
          const Divider(),
          buildRow("Category based on need", "Ondo"),
          const Divider(),
        ],
      )),
    );
  }
}

class BankDetailsPage extends StatelessWidget {
  const BankDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          buildRow("Account Number", "Alisha Boe"),
          const Divider(),
          buildRow("Bank Name", "ondocitywidows"),
          const Divider(),
          buildRow("NGO Membership", "03/05/1787"),
          const Divider(),
          buildRow("NGO Name", "+234-233-222"),
          const Divider(),
          buildRow("Received By", "Unemployed"),
          const Divider(),
          buildRow("Registration Date", "Ondo"),
          const Divider(),
        ],
      )),
    );
  }
}

Widget buildRow(String label, String value) {
  return Container(
    margin:
        const EdgeInsets.only(bottom: 15.0, top: 30.0, right: 20.0, left: 20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontFamily: "Rubik",
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff111111)),
        ),
        Text(
          value,
          textAlign: TextAlign.right,
          style: const TextStyle(
            fontFamily: "Rubik",
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(101, 101, 101, 1),
          ),
        )
      ],
    ),
  );
}
