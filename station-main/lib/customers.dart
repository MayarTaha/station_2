import 'package:flutter/material.dart';
import 'package:station/addcustom.dart';

class Customers extends StatelessWidget {
  const Customers({super.key});

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
          child: Text(' العملاء '),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'اسم العميل',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'العنوان',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'رقم الجوال',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'السجل التجاري',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'الرقم الضريبي',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ملاحظات',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.cyan[900],
                    child: TextButton.icon(
                      label: RichText(
                        text: const TextSpan(
                          text: ' حفظ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.download_for_offline_outlined,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 5),
                  const SizedBox(width: 5),
                  const SizedBox(width: 5),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.cyan[900],
                    child: TextButton.icon(
                      label: RichText(
                        text: const TextSpan(
                          text: ' حذف',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.delete_outline_outlined,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    child: IconButton(
                      icon: Icon(Icons.person_add_alt_1_rounded),
                      iconSize: 40,
                      color: Colors.cyan[900],
                      tooltip: ' اضافة عميل',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddCustom()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
