import 'package:flutter/material.dart';

class LTabPageSelector extends StatefulWidget {
  @override
  State<LTabPageSelector> createState() => _LTabPageSelectorState();
}

class _LTabPageSelectorState extends State<LTabPageSelector>
    with SingleTickerProviderStateMixin {
  final int _numDots = 5;
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _numDots, vsync: this);
  }

  void _moveNext() {
    setState(() {
      (_controller.index == _numDots - 1)
          ? _controller.index = 0
          : _controller.index++;
    });
  }

  List<Widget> widgets = [
    Container(
        height: 180,
        width: double.infinity,
        child: Image.asset(
          "assets/images/5.jpg",
          fit: BoxFit.fill,
        )),
    Container(
        height: 180,
        width: double.infinity,
        child: Image.asset(
          "assets/images/4.jpg",
          fit: BoxFit.fill,
        )),
    Container(
        height: 180,
        width: double.infinity,
        child: Image.asset(
          "assets/images/3.jpg",
          fit: BoxFit.fill,
        )),
    Container(
        height: 180,
        width: double.infinity,
        child: Image.asset(
          "assets/images/2.jpg",
          fit: BoxFit.fill,
        )),
    Container(
        height: 180,
        width: double.infinity,
        child: Image.asset(
          "assets/images/1.jpg",
          fit: BoxFit.fill,

          // fit: BoxFit.fill,
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widgets[_controller.index],
          TabPageSelector(controller: _controller),
          TextButton(onPressed: _moveNext, child: Text("التالى")),
        ],
      ),
    );
  }
}
