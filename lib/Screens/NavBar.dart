import 'dart:html';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nsiacademy/Widgets/OnHoverText.dart';
import 'package:nsiacademy/main.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1020)
        return WebNavBar();
      else if (constraint.maxWidth > 900)
        return WebMidNavBar();
      else
        return MobileNavBar();
    });
  }
}

class WebNavBar extends StatefulWidget {
  const WebNavBar({Key? key}) : super(key: key);

  @override
  State<WebNavBar> createState() => _WebNavBarState();
}

class _WebNavBarState extends State<WebNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Row(
                children: [
                  Text("N",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold)),
                  Text("S",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold)),
                  Text("I",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold)),
                  Text("  Academy",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            OnHoverText(builder: (isHovered) {
              final color = isHovered ? Colors.indigo : Colors.black;
              return Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 15,
                    color: color,
                  ),
                ),
              );
            }),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Search for anything",
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            OnHoverText(builder: (isHovered) {
              final color = isHovered ? Colors.indigo : Colors.black;
              return Center(
                child: Text(
                  "NSI Business",
                  style: TextStyle(
                    fontSize: 15,
                    color: color,
                  ),
                ),
              );
            }),
            SizedBox(
              width: 20,
            ),
            OnHoverText(builder: (isHovered) {
              final color = isHovered ? Colors.indigo : Colors.black;
              return Center(
                child: Text(
                  "Tech on NSI",
                  style: TextStyle(
                    fontSize: 15,
                    color: color,
                  ),
                ),
              );
            }),
            SizedBox(
              width: 10,
            ),
            OnHoverText(builder: (bool isHoverd) {
              final color = isHoverd ? Colors.indigo : null;
              return Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: color,
                    )),
              );
            }),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 85,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.black),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                alignment: Alignment.center,
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: IconButton(
                    onPressed: () {}, icon: Icon(FontAwesomeIcons.globe))),
          ],
        ),
      ),
    );
  }
}

class WebMidNavBar extends StatefulWidget {
  const WebMidNavBar({Key? key}) : super(key: key);

  @override
  State<WebMidNavBar> createState() => _WebMidNavBarState();
}

class _WebMidNavBarState extends State<WebMidNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Row(
                children: [
                  Text("N",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold)),
                  Text("S",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold)),
                  Text("I",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold)),
                  Text("  Academy",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            OnHoverText(builder: (isHovered) {
              final color = isHovered ? Colors.indigo : Colors.black;
              return Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 15,
                    color: color,
                  ),
                ),
              );
            }),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Search for anything",
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
            OnHoverText(builder: (bool isHoverd) {
              final color = isHoverd ? Colors.indigo : null;
              return Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: color,
                    )),
              );
            }),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 85,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.black),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                alignment: Alignment.center,
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: IconButton(
                    onPressed: () {}, icon: Icon(FontAwesomeIcons.globe))),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
//  final Widget Function(bool mobileView) cheker;
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool mobileView = true;
    return Container(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OnHoverText(builder: (bool isHoverd) {
              final color = isHoverd ? Colors.indigo : null;
              return Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: color,
                    )),
              );
            }),
            Row(
              children: [
                Text("N",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold)),
                Text("S",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                Text("I",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold)),
                Text("  Academy",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                OnHoverText(builder: (bool isHoverd) {
                  final color = isHoverd ? Colors.indigo : null;
                  return Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: color,
                        )),
                  );
                }),
                OnHoverText(builder: (bool isHoverd) {
                  final color = isHoverd ? Colors.indigo : null;
                  return Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: color,
                        )),
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
