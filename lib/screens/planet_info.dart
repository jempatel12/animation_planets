import 'package:flutter/material.dart';

class PlanetInfoPage extends StatefulWidget {
  const PlanetInfoPage({Key? key}) : super(key: key);

  @override
  State<PlanetInfoPage> createState() => _PlanetInfoPageState();
}

class _PlanetInfoPageState extends State<PlanetInfoPage>
    with TickerProviderStateMixin {
  late AnimationController circularncontroller;

  @override
  void initState() {
    super.initState();
    circularncontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    circularncontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          res['name'],
          style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 10),
            RotationTransition(
              turns: circularncontroller,
              child: Image.asset(
                res['image'],
                height: 250,
                width: 250,
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: Text(
                res['dist_from_earth'],
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                res['overview'],
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}