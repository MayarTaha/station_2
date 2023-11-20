import 'package:flutter/material.dart';
import 'package:station/home.dart';
import 'package:station/log_in.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.cyan[900],
        backgroundColor: Colors.cyan[900],
        title: const Padding(
          padding: EdgeInsets.only(left: 250.0),
          child: Text(' اختر نوع النسخة'),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/intro.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              icon: const Icon(
                Icons.lock_clock_outlined,
                color: Colors.blue,
                size: 50.0,
              ),
              label: RichText(
                text: const TextSpan(
                  text: 'نسخة تجريبية',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            const SizedBox(height: 10),
            TextButton.icon(
              icon: const Icon(
                Icons.login_outlined,
                color: Colors.blue,
                size: 50.0,
              ),
              label: RichText(
                text: const TextSpan(
                  text: 'نسخة مفعلة',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogIn()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
