import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_more/all%20data/alldatalist.dart';
import 'package:tour_more/login%20pages/signin.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String firstname = '';
  String lastName = '';
  String email = '';
  String password = '';
  bool obtext = false;
  String? errorText;
  bool checkError = false;
  Color buttonColor = Colors.grey;
  String machEmailCheck = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 60,
              width: double.maxFinite,
              child: Row(
                children: [
                  //back button
                  Container(
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
                        )),
                  ),
                  //
                ],
              ),
              //
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Create a new account..",
              style: TextStyle(
                  fontFamily: "Lobstar",
                  color: Colors.blue,
                  fontSize: 18,
                  letterSpacing: 1),
            ),
            //
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 136, 247),
                        width: 1)),
                //textfield 1
                child: TextField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      labelText: "first Name",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      )),
                  onChanged: (value) {
                    setState(() {
                      firstname = value;
                    });
                  },
                ),
              ),
            ),
            //
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 136, 247),
                        width: 1)),
                //textfield 2
                child: TextField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      labelText: "last Name",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      )),
                  onChanged: (value) {
                    setState(() {
                      lastName = value;
                    });
                  },
                ),
              ),
            ),
            //
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 136, 247),
                        width: 1)),
                //textfield 3
                child: TextField(
                  decoration: InputDecoration(
                      errorText: checkError ? errorText : null,
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                      border: InputBorder.none,
                      filled: true,
                      labelText: "email",
                      labelStyle: const TextStyle(
                        color: Colors.blue,
                      )),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                    if (email.contains(" ")) {
                      setState(() {
                        checkError = true;
                        errorText = "space is not allowed";
                      });
                    } else {
                      setState(() {
                        checkError = false;
                      });
                    }
                  },
                ),
              ),
            ), //
            //
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 136, 247),
                        width: 1)),
                //textfield 4
                child: TextField(
                  obscureText: !obtext,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obtext = !obtext;
                          });
                        },
                        icon: obtext
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                      border: InputBorder.none,
                      filled: true,
                      labelText: "password",
                      labelStyle: const TextStyle(
                        color: Colors.blue,
                      )),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                    if (firstname.isNotEmpty &&
                        lastName.isNotEmpty &&
                        email.isNotEmpty &&
                        password.isNotEmpty) {
                      setState(() {
                        buttonColor = Colors.blue;
                      });
                    }
                  },
                ),
              ),
            ),
            //
            //
            const SizedBox(
              height: 50,
            ),

            //
            GestureDetector(
              onTap: () {
                machEmailCheck = emailAll.where((element) {
                  return element.contains(email);
                }).join(",");
                if (firstname.isNotEmpty &&
                    lastName.isNotEmpty &&
                    email.isNotEmpty &&
                    password.isNotEmpty &&
                    email != machEmailCheck) {
                  setState(() {
                    firstnameAll.add(firstname);
                    lastnameAll.add(lastName);
                    emailAll.add(email);
                    passwordAll.add(password);
                    currentName = "$firstname $lastName";
                    currentName = currentName.replaceAll(RegExp(r"\s+"), " ");
                    currentEmail = email;

                    // Navigator.of(context).pop();
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return const SigninPgae();
                    }));
                  });
                } else if (email == machEmailCheck) {
                  setState(() {
                    checkError = true;
                    errorText = "enter a valid email";
                  });
                }
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                height: 55,
                width: double.maxFinite,
                child: Center(
                    child: Text(
                  "Create account",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: buttonColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) {
                    return const SigninPgae();
                  }));
                },
                child: const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}
