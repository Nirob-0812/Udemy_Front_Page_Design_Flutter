import 'package:flutter/material.dart';

class FontPageImage extends StatelessWidget {
  const FontPageImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1020)
        return webImage();
      else if (constraint.maxWidth > 900)
        return WebMidImage();
      else
        return mobileimage();
    });
  }
}

class webImage extends StatelessWidget {
  const webImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              "images/fontpage.jpg",
              fit: BoxFit.fitWidth,
            )),
        Positioned(
            top: 50,
            left: 100,
            child: Container(
              height: 140,
              width: 400,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 5,
                    spreadRadius: 0.5,
                    offset: Offset(1, 2))
              ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Last day to save",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Courses designed to help you reach your goals start at just \$13.99 — sale ends today.",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

class WebMidImage extends StatelessWidget {
  const WebMidImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              "images/fontpage.jpg",
              fit: BoxFit.fitWidth,
            )),
        Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 140,
              width: 400,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 5,
                    spreadRadius: 0.5,
                    offset: Offset(1, 2))
              ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Last day to save",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Courses designed to help you reach your goals start at just \$13.99 — sale ends today.",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

class mobileimage extends StatelessWidget {
  const mobileimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              "images/fontpage1.jpg",height: 250,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Last day to save",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Courses designed to help you reach your goals start at just \$13.99 — sale ends today.",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
