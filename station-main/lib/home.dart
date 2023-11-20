import 'package:flutter/material.dart';
import 'package:station/customers.dart';
import 'package:station/gas.dart';
import 'package:station/suppliers.dart';
import 'package:station/widgets/Nav_Drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        shadowColor: Colors.teal,
        backgroundColor: Colors.cyan[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(100)),
        ),
        title: Text(' الرئيسية', textAlign: TextAlign.center),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 80.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/itm.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'الاصناف',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/bill.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'فاتورة مشتريات',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/gas.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'فاتورة بنزين',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/pos.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'فاتورة بيع ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/sup.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'الموردين',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/custm.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'العملاء',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ), //
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/report.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'التقارير',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/st.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'الاعدادات',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Material(
                      // color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(17),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/printer.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'اعدادات الطابعه',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
      ),
    );
  }
}
