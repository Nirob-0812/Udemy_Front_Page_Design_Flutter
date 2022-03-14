import 'package:flutter/material.dart';

class OnHoverText extends StatefulWidget {
  final Widget Function(bool isHoverd) builder;

  const OnHoverText({Key? key, required this.builder}) : super(key: key);

  @override
  State<OnHoverText> createState() => _OnHoverTextState();
}

class _OnHoverTextState extends State<OnHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => OnEntered(true),
      onExit: (event) => OnEntered(false),
      child: widget.builder(isHovered),
    );
  }

  OnEntered(bool checkHovered) {
    setState(() => this.isHovered = checkHovered);
  }
}
