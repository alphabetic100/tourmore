import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_more/all%20data/alldatalist.dart';
import 'package:tour_more/login%20pages/login_page.dart';

class Profile extends StatefulWidget {
  final bool getBaekbutton;
  const Profile({
    super.key,
    required this.getBaekbutton,
  });
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool ok = false;
  late bool _backButton;
  @override
  void initState() {
    super.initState();
    _backButton = widget.getBaekbutton;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/background3.jpg'),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              top: 345,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 7,
                      blurRadius: 5,
                    ),
                  ],
                  color: Colors.white38,
                ),
              )),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 18,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.amber,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // color of the shadow
                  spreadRadius: 10, // spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(5, -5), // changes position of shadow
                )
              ],
            ),
          ),
          Positioned(
            top: 90,
            left: -70,
            child: Transform.rotate(
              angle: -0.4,
              child: Container(
                height: 130,
                width: 700,
                color: Colors.lightBlue,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // color of the shadow
                    spreadRadius: 10, // spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(5, -5), // changes position of shadow
                  )
                ],
                borderRadius: BorderRadius.circular(30),
                color: Colors.amber,
                image: const DecorationImage(
                    image: AssetImage("assets/image/profile.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
              top: 270,
              left: 260,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: const Icon(Icons.add_a_photo),
                  onPressed: () {
                    print("object");
                  },
                ),
              )),
          Positioned(
            top: 350,
            left: 60,
            child: Text(
              currentName,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 60,
            child: Text(
              currentEmail,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
              ),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: const Text(
                                "worning!",
                                style: TextStyle(color: Colors.red),
                              ),
                              content: const Text(
                                  'Are you sure you want to log out?'),
                              actions: [
                                TextButton(
                                  onPressed: (() {
                                    Navigator.of(context).pop();
                                  }),
                                  child: const Text(
                                    "Stay in",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (() {
                                    Navigator.pushAndRemoveUntil(context,
                                        CupertinoPageRoute(builder: (context) {
                                      return const Loginpage();
                                    }), (route) => false);
                                  }),
                                  child: const Text(
                                    "Log out",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            );
                          });
                    });
                  },
                  icon: const Icon(Icons.logout_outlined)),
            ),
          ),
          _backButton
              ? Positioned(
                  top: 60,
                  left: 20,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(CupertinoIcons.back),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
