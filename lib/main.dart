import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

// component header
class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 20,
          height: 15,
          child: Image.asset("assets/icons/menu.png"),
        ),
        Container(
          width: 59,
          height: 59,
          child: Image.asset("assets/images/logo.png"),
        ),
        Container(
          width: 23,
          height: 23,
          child: Image.asset("assets/icons/shop.png"),
        ),
      ],
    );
  }
}

// component navbar
class NavbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF00623B),
      selectedFontSize: 0,
      unselectedFontSize: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Container(
            width: 24,
            height: 24,
            child: Image.asset("assets/icons/home.png"),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 27,
            height: 27,
            child: Image.asset("assets/icons/wallet.png"),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            size: 28,
            color: Colors.white,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none,
            size: 28,
            color: Colors.white,
          ),
          label: '',
        ),
      ],
      currentIndex: 0,
    );
  }
}

// component filter
class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.5),
            color: const Color(0xFF00623B), // Set border radius
          ),
          child: Center(
            child: Text('All',
                style:
                    GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
          ),
        ),
        const SizedBox(width: 7.0),
        Container(
          height: 40,
          width: 92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.5),
            color:
                const Color.fromARGB(255, 222, 225, 230), // Set border radius
          ),
          child: Center(
            child: Text('Coffee',
                style:
                    GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
          ),
        ),
        const SizedBox(width: 7.0),
        Container(
          height: 40,
          width: 92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.5),
            color:
                const Color.fromARGB(255, 222, 225, 230), // Set border radius
          ),
          child: Center(
            child: Text('Food',
                style:
                    GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

// component carousel
// class CarouselFilter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: 40,
//         enlargeCenterPage: false,
//         enableInfiniteScroll: false,
//         viewportFraction: 0.0,
//       ),
//       items: [
//         Padding(
//           padding: const EdgeInsets.only(right: 10.0),
//           child: Container(
//             width: 92,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(26.5),
//               color: const Color(0xFF00623B), // Set border radius
//             ),
//             child: Center(
//               child: Text('All',
//                   style:
//                       GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//           child: Container(
//             width: 92,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(26.5),
//               color:
//                   const Color.fromARGB(255, 222, 225, 230), // Set border radius
//             ),
//             child: Center(
//               child: Text('Coffee',
//                   style:
//                       GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//           child: Container(
//             width: 92,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(26.5),
//               color:
//                   const Color.fromARGB(255, 222, 225, 230), // Set border radius
//             ),
//             child: Center(
//               child: Text('Tea',
//                   style:
//                       GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//           child: Container(
//             width: 92,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(26.5),
//               color:
//                   const Color.fromARGB(255, 222, 225, 230), // Set border radius
//             ),
//             child: Center(
//               child: Text('Drink',
//                   style:
//                       GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//           child: Container(
//             width: 92,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(26.5),
//               color:
//                   const Color.fromARGB(255, 222, 225, 230), // Set border radius
//             ),
//             child: Center(
//               child: Text('Food',
//                   style:
//                       GoogleFonts.raleway(fontSize: 20.0, color: Colors.white)),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// compnent card item
class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256,
      height: 371,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Color of the shadow
            spreadRadius: 2.5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 3), // Offset in x and y axis
          ),
        ],
      ),
      child: Column(children: [
        Container(
          width: 256,
          height: 270,
          child: Image.asset("assets/images/coffee.png"),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(children: [
            Text(
              "Chocolate Frappuccino",
              style: GoogleFonts.raleway(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$20.00",
                  style: GoogleFonts.raleway(
                    color: const Color(0xFF00623B),
                    fontSize: 22,
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  size: 22,
                  color: Colors.red,
                ),
              ],
            ),
          ]),
        )
      ]),
    );
  }
}

// Ini adalah widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      HeaderWidget(), // using header component
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Our way of loving\nyou back",
                        style: GoogleFonts.raleway(fontSize: 25),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled:
                              true, // Set to true to enable background color
                          fillColor: const Color.fromARGB(255, 222, 225, 230),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 0), // Set background color
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                26.5), // Set border radius
                            borderSide: BorderSide.none, // Remove border
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // TODO review performance later
                      // CarouselFilter

                      Filter(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "See All",
                            style: GoogleFonts.raleway(
                              color: const Color(0xFF00623B),
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ItemCard(),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ))),
        bottomNavigationBar: NavbarWidget(),
      ),
    );
  }
}
