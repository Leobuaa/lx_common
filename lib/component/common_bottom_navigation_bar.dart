import 'package:flutter/material.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';

class CommonBottomNavigationBar extends StatefulWidget {
  const CommonBottomNavigationBar(
      {super.key, required this.contentList, required this.bottomBarItemList});

  final List<Widget> contentList;
  final List<BottomNavigationBarItem> bottomBarItemList;

  @override
  State<CommonBottomNavigationBar> createState() =>
      _CommonBottomNavigationBarState();
}

class _CommonBottomNavigationBarState extends State<CommonBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LazyLoadIndexedStack(
          index: _currentIndex, children: widget.contentList),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        items: widget.bottomBarItemList,
      ),
    );
  }
}
