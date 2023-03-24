import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_more/all%20data/alldatalist.dart';

import '../mainPage/home.dart';

class SigninPgae extends StatefulWidget {
  const SigninPgae({super.key});
  @override
  State<SigninPgae> createState() => _SigninPgaeState();
}

class _SigninPgaeState extends State<SigninPgae> {
  String email = "";
  String password = "";
  late String emailChecker;
  late int passworadIndex;
  late int currentNameIndex;
  String space = " ";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
              top: 60,
              left: 20,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.blue,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 160,
              left: 75,
              child: Text(
                "Welcome Chif",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "AbrilFatface",
                  color: Colors.blue,
                ),
              ),
            ),
            //
            //
            const Positioned(
              top: 260,
              left: 16,
              child: Text(
                "Log in here :",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Alkalami",
                  color: Colors.blue,
                ),
              ),
            ),
            //
            //
            Positioned(
              top: 320,
              left: 16,
              right: 16,
              child: TextField(
                decoration: const InputDecoration(
                  filled: true,
                  errorStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  labelStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),

                  //  errorText: "hello",
                  labelText: "Enter your email:",
                ),
                onChanged: (value) => setState(() {
                  email = value;
                }),
              ),
            ),

            //
            Positioned(
              top: 410,
              left: 8,
              right: 8,
              child: TextField(
                decoration: const InputDecoration(
                  filled: true,
                  errorStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  labelStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),

                  //  errorText: "hello",
                  labelText: "Enter your password:",
                ),
                onChanged: (value) => setState(() {
                  password = value;
                }),
              ),
            ),
            //
            Positioned(
              top: 470,
              left: 10,
              child: CupertinoButton(
                onPressed: () {},
                child: Text(
                  "Forgate Password!",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.red.shade300),
                ),
              ),
            ),
            //
            Positioned(
              top: 520,
              left: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    emailChecker = emailAll.where((element) {
                      return element.contains(email);
                    }).join(",");
                    // var passwordChecker = passwordAll.where((element) {
                    //   return element.contains(password);
                    // }).join(",");
                    passworadIndex = emailAll.indexOf(emailChecker);
                    currentNameIndex = emailAll.indexOf(emailChecker);
                    currentName = firstnameAll[currentNameIndex] +
                        space +
                        lastnameAll[currentNameIndex];
                    currentName = currentName.replaceAll(RegExp(r"\s+"), " ");
                    if (email == emailChecker &&
                        password == passwordAll[passworadIndex]) {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ),
                      );
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: const Text(
                                "Worning",
                                style: TextStyle(color: Colors.red),
                              ),
                              content: const Text(
                                "email or password not correct",
                                style: TextStyle(fontSize: 15),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "close",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 17),
                                  ),
                                )
                              ],
                            );
                          });
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: "Alkalami"),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
