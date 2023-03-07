import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_more/login%20pages/signin.dart';
import 'package:tour_more/login%20pages/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/image/image5.jpg',
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 550,
                  left: 40,
                ),
                child: Text(
                  "Lets Start Journey, Enjoy Beautiful Movemt of Life",
                  style: TextStyle(
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(1, -1))
                      ],
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Alkalami',
                      wordSpacing: 3),
                ),
              ),
              Positioned(
                top: 650,
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(CupertinoPageRoute(builder: (context) {
                        return const SigninPgae();
                      }));
                    },
                    child: Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width / 2 + 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: const Center(
                          child: Text(
                        "Start",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2),
                      )),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 740,
                left: 110,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return const SignupPage();
                    }));
                  },
                  child: const Text(
                    "Don't Have Account?",
                    style: TextStyle(
                      fontFamily: "Alkalami",
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
