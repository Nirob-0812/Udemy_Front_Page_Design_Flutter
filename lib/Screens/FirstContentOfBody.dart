import 'package:flutter/material.dart';

class FirstContentOfBody extends StatelessWidget {
  const FirstContentOfBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1020)
        return WebFirstContent();
      else if (constraint.maxWidth > 900)
        return WebMidFirstContent();
      else
        return MobileFirstContent();
    });
  }
}

class WebFirstContent extends StatelessWidget {
  const WebFirstContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "A broad selection of courses ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Choose from 183,000 online video courses with new additions published every month",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
    ;
  }
}

class WebMidFirstContent extends StatelessWidget {
  const WebMidFirstContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "A broad selection of courses ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Choose from 183,000 online video courses with new additions published every month",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class MobileFirstContent extends StatelessWidget {
  const MobileFirstContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
