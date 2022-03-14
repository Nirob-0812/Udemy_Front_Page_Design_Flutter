import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:nsiacademy/Widgets/CustomCard.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CusTomTabBarView extends StatelessWidget {
  const CusTomTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 600)
        return FiveTabBarView();
      else
        return OneTabBarView();
    });
  }
}

class FiveTabBarView extends StatefulWidget {
  @override
  State<FiveTabBarView> createState() => _FiveTabBarViewState();
}

class _FiveTabBarViewState extends State<FiveTabBarView> {
  final itemControllar = ItemScrollController();

  Future jumpToItem(int indexposition) async {
    indexposition = indexposition + 5;
    itemControllar.scrollTo(
        index: indexposition, duration: Duration(milliseconds: 400));
  }
  Future jumpBackToItem(int indexposition) async {
    indexposition = indexposition + 5;
    itemControllar.scrollTo(
        index: indexposition, duration: Duration(milliseconds: 400));
  }

  @override
  Widget build(BuildContext context) {
    int indexposition = 0;
    // initState(){
    //   super.initState();
    //   indexposition=indexposition+5;
    // }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        alignment: Alignment.bottomCenter,
        height: 540,
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 235,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expand your career opportunities with Python",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Take one of Udemy’s range of Python courses and learn how to code using this incredibly useful language. Its simple syntax and readability makes Python perfect for Flask, Django, data science, and machine learning. You’ll learn how to build everything from games to sites to apps. Choose from a range of courses that will appeal to...",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 300,
                  width: double.infinity,
                  child: ScrollablePositionedList.builder(
                      itemCount: 100,
                      itemScrollController: itemControllar,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CustomCard(indx: index);
                      }),
                ),
                Positioned(
                  top: 140,
                  right: 0,
                  child: FloatingActionButton(
                      backgroundColor: Colors.black,
                      onPressed: () => jumpToItem(indexposition),
                      child: Icon(
                        FontAwesomeIcons.angleRight,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
                Positioned(
                  top: 140,
                  left: 0,
                  child: FloatingActionButton(
                      backgroundColor: Colors.black,
                      onPressed: () =>jumpBackToItem(indexposition),
                      child: Icon(
                        FontAwesomeIcons.angleLeft,
                        size: 30,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OneTabBarView extends StatelessWidget {
  const OneTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemControllar = ItemScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 340,
            width: double.infinity,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 300,
              width: double.infinity,
              child: ScrollablePositionedList.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemScrollController: itemControllar,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      indx: index,
                    );
                  }),
            ),
          ),
          Positioned(
            top: 140,
            right: 0,
            child: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {},
                child: Icon(
                  FontAwesomeIcons.angleRight,
                  size: 30,
                  color: Colors.white,
                )),
          ),
          Positioned(
            top: 140,
            left: 0,
            child: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {},
                child: Icon(
                  FontAwesomeIcons.angleLeft,
                  size: 30,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
