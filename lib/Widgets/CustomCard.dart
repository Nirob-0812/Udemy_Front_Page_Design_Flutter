import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.indx}) : super(key: key);

  final indx;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 300,
      child: InkWell(
        onTap: () {},
        child: Card(
          elevation: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/python.jpg",
                height: 150,
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Learn Python: The Complete Python Programming Course",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 6),
                child: Text(
                  "DR. Mandira Lamichhane",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 6),
                child: Row(
                  children: [
                    Text(
                      "5.0 ",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Text(
                      " (12,541)",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 6),
                child: Row(
                  children: [
                    Text(
                      "\$13.99  ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "\$84.99",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey.shade600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Text(indx.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
