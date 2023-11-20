import 'package:flutter/material.dart';

class Pay extends StatelessWidget {
  const Pay({super.key});

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
          child: Text('اختر طريقة الدفع '),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.cyan[900],
                    child: TextButton.icon(
                      label: RichText(
                        text: const TextSpan(
                          text: 'كاش ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.money_outlined,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.cyan[900],
                    child: TextButton.icon(
                      label: RichText(
                        text: const TextSpan(
                          text: ' بطاقة',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.credit_card_outlined,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.cyan[900],
                    child: TextButton.icon(
                      label: RichText(
                        text: const TextSpan(
                          text: ' STC pay',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.reset_tv_outlined,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(height: 20),
              const SizedBox(height: 200),
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.cyan[900],
                  child: TextButton.icon(
                    label: RichText(
                      text: const TextSpan(
                        text: ' دفع و طباعة',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    icon: const Icon(
                      Icons.print_outlined,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
