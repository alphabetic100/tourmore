import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tour_more/all%20data/alldatalist.dart';
import 'package:tour_more/drawer/drawer_list.dart';
import 'package:tour_more/drawer/my_drawer_head.dart';
import 'package:tour_more/favorite%20and%20search/search_page.dart';
import 'package:tour_more/favorite%20and%20search/see_favorite.dart';
import 'package:tour_more/mainPage/places_all.dart';
import 'package:tour_more/profile/profilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNumber = 0;
  PageController controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            pageNumber = value;
          });
        },
        children: const [
          // home page
          HomepageBody(),
          //container still in process to work
          SeeFavorite(),
          //container still in process to work
          SearchPage(),
          Profile(
            getBaekbutton: false,
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: const [
                MyDrawerHead(),
                DrawerList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        onTabChange: (value) {
          setState(() {
            pageNumber = value;
            controller.animateToPage(pageNumber,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate);
          });
        },
        selectedIndex: pageNumber,
        color: Colors.grey.shade600,
        tabs: const [
          GButton(
            gap: 5,
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            gap: 5,
            icon: Icons.favorite_border,
            text: "Favorite",
          ),
          GButton(
            gap: 5,
            icon: Icons.search,
            text: "Search",
          ),
          GButton(
            gap: 5,
            icon: Icons.person,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}

class HomepageBody extends StatefulWidget {
  const HomepageBody({super.key});

  @override
  State<HomepageBody> createState() => _HomepageBodyState();
}

class _HomepageBodyState extends State<HomepageBody>
    with SingleTickerProviderStateMixin {
  bool searchbar = true;
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Container(
          margin: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Explore your world beauty",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              //profile part
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/image/profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        // search box here
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            onTap: () {
              setState(() {
                searchbar = false;
              });
            },
            onSubmitted: (value) {
              setState(() {
                searchbar = true;
              });
            },
            decoration: InputDecoration(
              labelText: 'Search here...',
              prefixIcon: searchbar
                  ? const Icon(Icons.search)
                  : const Icon(Icons.keyboard),
              filled: true,
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.white,
                width: 3,
              )),
              fillColor: const Color.fromARGB(255, 203, 220, 235),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        // end of search box

        const SizedBox(
          height: 30,
        ),
        //start of view options
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.flight,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[300]),
              ),
              Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.business,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[300]),
              ),
              Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.dining,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[300]),
              ),
              Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.directions_car,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[300]),
              ),
              Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.explore,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[300]),
              ),

              /// end of view options

              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        //start of tab bar from here
        SizedBox(
          height: 50,
          width: double.maxFinite,
          child: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.blue,
            controller: controller,
            tabs: const [
              Tab(
                text: 'places',
              ),
              Tab(
                text: 'Hotels',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 380,
          width: double.maxFinite,
          child: TabBarView(controller: controller, children: [
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagesAsset.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return PlacesAll(
                        image: imagesAsset[index],
                        title: titleofImage[index],
                        location: locationofImage[index],
                        ticketPrice: 500.00,
                        description:
                            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                        openTime: '8 AM - 9 PM',
                      );
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage(imagesAsset[index]),
                          fit: BoxFit.cover),
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 100,
                    width: 270,
                    child: Stack(
                      children: [
                        Positioned(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          top: 250,
                          left: 20,
                          child: Text(
                            titleofImage[index],
                            style: const TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, -1),
                                ),
                              ],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Positioned(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          top: 280,
                          left: 20,
                          child: Text(
                            "subtitle of place",
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, -1),
                                ),
                              ],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //// Hotels for book
            ListView.builder(
              itemCount: 10,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return Container(
                  margin: const EdgeInsets.all(20),
                  height: 80,
                  width: double.maxFinite,
                  color: Colors.blue.shade200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Text(
                            "H",
                            style: TextStyle(fontSize: 25, color: Colors.blue),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hotel Name",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "hotel subtitle",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.book,
                            color: Color.fromARGB(255, 63, 81, 90),
                          ))
                    ],
                  ),
                );
              },
            )
          ]),
        )
      ],
    );
  }
}
