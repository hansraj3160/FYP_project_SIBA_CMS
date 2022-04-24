import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:siba_cms_2/HomeScreen/Home_Screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xFFffffff),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.04),
                const Text(
                  "Here to Get",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                const Text(
                  "Welcomed !",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                SizedBox(height: height * 0.04),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter you CMS",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^\d{3}\-\d{2}\-\d{4}$').hasMatch(value)) {
                      return "Enter correct CMS";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: height * 0.04),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter you Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^.{5,}').hasMatch(value)) {
                      return "Enter correct PAssword";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NeumorphicButton(
                      margin: const EdgeInsets.only(top: 12),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        }
                      },
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(100)),
                          depth: 5,
                          lightSource: LightSource.topLeft,
                          color: const Color.fromARGB(255, 67, 31, 187)),
                      padding: const EdgeInsets.all(12.0),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
