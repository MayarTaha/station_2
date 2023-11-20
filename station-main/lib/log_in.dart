import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _maritalStatus = 'محل';
  bool hidePassword = true;

  get validatePassword => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.cyan[900],
          title: const Text('نسخة تجريبية'),
          backgroundColor: Colors.cyan[900],
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 130.0,
                  backgroundImage: AssetImage("assets/login.jpg"),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: 'رقم الهاتف',
                        labelStyle: TextStyle(
                          color: Colors.cyan[900],
                          fontSize: 25,
                        )),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // suffixIcon: IconButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       hidePassword = !hidePassword;
                        //     });
                        //   },
                        //   icon: (hidePassword == true)
                        //       ? const Icon(Icons.visibility_off)
                        //       : const Icon(
                        //     Icons.visibility,
                        //   ),
                        // ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: 'كلمة المرور',
                        labelStyle: TextStyle(
                          color: Colors.cyan[900],
                          fontSize: 25,
                        )),
                  ),
                ),
                RadioListTile<String>(
                  title: const Text('محل'),
                  value: 'محل',
                  groupValue: _maritalStatus,
                  onChanged: (value) {
                    setState(() {
                      _maritalStatus = value.toString();
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('موظف/مشرف'),
                  value: 'موظف/مشرف',
                  groupValue: _maritalStatus,
                  onChanged: (value) {
                    setState(() {
                      _maritalStatus = value.toString();
                    });
                  },
                ),
                Container(
                  width: 350,
                  height: 50,
                  child: TextButton.icon(
                    label: RichText(
                      text: const TextSpan(
                          text: 'تسجيل الدخول',
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 30,
                          )),
                    ),
                    icon: const Icon(
                      Icons.account_circle,
                      color: Colors.teal,
                      size: 40,
                    ),
                    onPressed: () {
                      //action
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
