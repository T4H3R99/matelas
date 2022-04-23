import 'package:flutter/material.dart';
import 'package:matelas/Screens/auth.dart';
import 'package:matelas/Screens/moreInfos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(143, 255, 64, 128),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return MoreInfos();
          }));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const Authentification();
              }));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Pression = ...',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Temps = ... ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
