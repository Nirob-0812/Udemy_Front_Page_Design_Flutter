import 'package:flutter/material.dart';
import 'package:nsiacademy/Widgets/OnHoverText.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categories = [
      "Python",
      "Excel",
      "WebDevelopMent",
      "JavaScript",
      "Data Science",
      "AWS Certification",
      "Dwraing"
    ];
    return Container(
        height: 60,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return OnHoverText(builder: (isHovered) {
                final color = isHovered ? Colors.black : Colors.grey;
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        categories[index],
                        style: TextStyle(
                            fontSize: 18,
                            color: color,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              });
            }));
    ;
  }
}
