import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PlacesAll extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String description;
  final String openTime;
  // final String openDay;
  final double ticketPrice;
  const PlacesAll({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.description,
    required this.openTime,
    // required this.openDay,
    required this.ticketPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
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
                  icon: const Icon(CupertinoIcons.back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
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
                  icon: const Icon(CupertinoIcons.search),
                  onPressed: () {},
                ),
              ),
            ),

            /// title of place
            Positioned(
              top: 300,
              left: 40,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,
                  shadows: [Shadow(color: Colors.black, offset: Offset(3, -1))],
                ),
              ),
            ),
            // end of titel
            //star of location
            Positioned(
                top: 330,
                left: 16,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 3),
                      height: 35,
                      width: 200,
                      child: Text(
                        location,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          shadows: [
                            Shadow(color: Colors.black, offset: Offset(2, -1))
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            // description from here
            Positioned(
              top: 420,
              left: 20,
              right: 20,
              child: SizedBox(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  description,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[700],
                      fontFamily: 'Lobstar',
                      fontWeight: FontWeight.w700),
                  maxLines: 5,
                ),
              ),
            ),
            //time day tikit
            Positioned(
              top: 540,
              left: 20,
              right: 20,
              bottom: 130,
              child: SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.timer,
                          color: Colors.blue,
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            openTime,
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          CupertinoIcons.calendar,
                          color: Colors.blue,
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Friday - Tuesday",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.airplanemode_active,
                          color: Colors.blue,
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Ticket 2 way",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // bottom navigation  start from here
            Positioned(
              top: 720,
              left: 20,
              right: 20,
              child: SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 13),
                              child: Icon(
                                Icons.attach_money_outlined,
                                size: 25,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              "$ticketPrice ",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //booking button
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text(
                                "Book",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.send_outlined,
                                color: Colors.white,
                                size: 35,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //end of booking button
                  ],
                ),
              ),
            ),

            //end of page
          ],
        ),
      ),
    );
  }
}
