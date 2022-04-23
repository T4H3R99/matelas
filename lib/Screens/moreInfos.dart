import 'package:flutter/material.dart';
import 'package:matelas/Screens/homepage.dart';

class MoreInfos extends StatefulWidget {
  const MoreInfos({Key? key}) : super(key: key);

  @override
  State<MoreInfos> createState() => _MoreInfosState();
}

class _MoreInfosState extends State<MoreInfos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" More Informations"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const HomePage();
              }));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
