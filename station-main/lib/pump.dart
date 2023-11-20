import 'package:flutter/material.dart';
import 'package:station/first.dart';
import 'package:station/price.dart';

class Pump extends StatelessWidget {
  const Pump({super.key});

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
                                    builder: (context) => const Price()),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/33.jpg',
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '1',
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
                        SizedBox(height: 10),
                        Container(
                          width: 250,
                          height: 130,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Price()),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/22.jpg',
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '2',
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
                  SizedBox(width: 10),
                  Container(
                    width: 250,
                    height: 130,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Price()),
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/11.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '3',
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
