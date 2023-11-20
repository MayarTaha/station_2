import 'package:flutter/material.dart';
import 'package:station/pump.dart';

class Gas extends StatelessWidget {
  const Gas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.teal,
        backgroundColor: Colors.cyan[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 250.0),
          child: Text('اختر النوع '),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 250,
                          height: 130,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pump()),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/gs.jpg',
                                  height: 78,
                                  width: 78,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'بنزين 95\n2.18 SR',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.cyan[800],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 250,
                          height: 130,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pump()),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/gs.jpg',
                                  height: 78,
                                  width: 78,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'بنزين 91\n2.0 SR',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.cyan[800],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 250,
                    height: 130,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Pump()),
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/gs.jpg',
                            height: 78,
                            width: 78,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            ' ديزل\n65.0 SR',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
