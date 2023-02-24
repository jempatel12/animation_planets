import 'package:flutter/material.dart';
import 'global.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 168,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Galaxy Planets',
                style: TextStyle(fontSize: 20, color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              background: Image.asset('assets/images/planet.png'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: Global.planetDetails.length,
                  (context, i) {
                return Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue),
                        ),
                        alignment: Alignment.center,
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('planet_info_page', arguments: Global.planetDetails[i]);
                          },
                          leading:
                          Image.asset(Global.planetDetails[i]['image']),
                          title: Text(Global.planetDetails[i]['name'],
                              style:
                              TextStyle(color: Colors.blue, fontSize: 25)),

                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}