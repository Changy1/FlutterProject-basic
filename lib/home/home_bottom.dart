import 'package:flutter/material.dart';

// 有状态部件
class HomeBottom extends StatefulWidget {
  @override
  _HomeBottom createState () => _HomeBottom();
}

class _HomeBottom extends State<HomeBottom> {
  // 定义一个函数，点击的时候触发
  void _changeIndex (int index) {
    setState(() {
      _currentIndex = index;      
    });
  }
  // 定义一条数据，代表活跃的item的下标
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
        BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
      ],
      // 定义当前活跃的item为哪一个
      currentIndex: _currentIndex,
      // 点击触发事件
      onTap: _changeIndex,
    );
  }
}