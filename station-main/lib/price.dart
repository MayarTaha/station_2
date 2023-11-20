import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';
import 'package:station/pay.dart';

class Price extends StatefulWidget {
  const Price({super.key});

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  String text = "";

  onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  @override
  @override
  void dispose() {
    super.dispose();
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    firstController.dispose();
    secondController.dispose();
    //super.dispose();
  }

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
          child: Text(' التكلفة  '),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: firstController,
                    onChanged: (value) {
                      _calculate1();
                    },
                    decoration: const InputDecoration(
                      labelText: 'السعر',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.teal, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 150,
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: secondController,
                    onChanged: (value) {
                      _calculate2();
                    },
                    decoration: const InputDecoration(
                      labelText: 'اللترات',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.teal, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            NumericKeyboard(
                onKeyboardTap: onKeyboardTap,
                textStyle: const TextStyle(
                  color: Colors.teal,
                  fontSize: 28,
                ),
                rightButtonFn: () {
                  if (text.isEmpty) return;
                  setState(() {
                    text = text.substring(0, text.length - 1);
                  });
                },
                rightButtonLongPressFn: () {
                  if (text.isEmpty) return;
                  setState(() {
                    text = '';
                  });
                },
                rightIcon: const Icon(
                  Icons.backspace_outlined,
                  color: Colors.teal,
                ),
                mainAxisAlignment: MainAxisAlignment.spaceBetween),
            Container(
              height: 40,
              width: 100,
              color: Colors.cyan[900],
              child: TextButton.icon(
                label: RichText(
                  text: const TextSpan(
                    text: ' دفع',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.payment_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pay()),
                  );
                },
              ),
            ),
          ]),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _calculate2() {
    final secondValue = double.parse(secondController.text);
    firstController.text = (secondValue * 2).toString();
  }

  void _calculate1() {
    final firstValue = double.parse(firstController.text);
    secondController.text = (firstValue / 2).toString();
  }
}
