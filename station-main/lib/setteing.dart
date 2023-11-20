import 'package:flutter/material.dart';

class Setteing extends StatefulWidget {
  const Setteing({super.key});

  @override
  State<Setteing> createState() => _SetteingState();
}

class _SetteingState extends State<Setteing> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _maritalStatus = 'A4';

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' الاعدادات '),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: ListView(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 70,
                child: Icon(
                  Icons.camera_alt,
                  size: 24,
                ),
              ),
              Center(
                child: Text('لوجو الشركة'),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: 'اسم الشركة ',
                    hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: 'رقم الهاتف',
                    hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: ' عنوان الشركة',
                    hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: '  ملاحظات تكتب اخر الفاتورة',
                    hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Container(
                height: 300,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
//child: Text('اعدادت الطابعة'),
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ' الضريبة',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),

                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ), //SizedBox
                            Text(
                              'الغاء الضريبة ',
                              style: TextStyle(fontSize: 17.0),
                            ), //Text
                            SizedBox(width: 10), //SizedBox
                            /** Checkbox Widget **/

                            Checkbox(
                              value: this.value,
                              onChanged: (value) => setState(() {
                                this.value = value!;
                              }),
                            ), //Checkbox
                          ], //<Widget>[]
                        ),
                        //
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey[350],
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              labelText: ' قيمة الضريبة المضافة %',
                              hintTextDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey[350],
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              labelText: '  الرقم الضريبي',
                              hintTextDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
                child: Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ' العملة',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        DropdownButton<String>(
                          items: <String>['ريال سعودي', 'جنيه مصري']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ]),
                ),
              ),
              Container(
                height: 300,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
//child: Text('اعدادت الطابعة'),
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'اعدادت الطابعة',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        RadioListTile<String>(
                          title: const Text('80mm'),
                          value: '80mm',
                          groupValue: _maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              _maritalStatus = value.toString();
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: const Text('A4'),
                          value: 'A4',
                          groupValue: _maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              _maritalStatus = value.toString();
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: const Text('58mm'),
                          value: '58mm',
                          groupValue: _maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              _maritalStatus = value.toString();
                            });
                          },
                        ),
                        Text(
                          'اعدادت البلوتوث',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
