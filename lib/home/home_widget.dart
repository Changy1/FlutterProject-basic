import 'package:flutter/material.dart';
import './home_list_widget.dart';
import './Drawer.dart';
import './home_bottom.dart';

class HomeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // Tab的控制器,无状态组件配合使用，只要在scaffold上边再套一层就可以了
    return DefaultTabController(
      length: 3,
      // 一个布局容器实现了基本的Material布局
      child: Scaffold(
        // 显示在页面顶部的一个appBar
        appBar: AppBar(
          // 标题
          title: Text('Sample Code'),
          // 在标题的前面显示一个logo，这里是打开抽屉的那个按钮
          leading: IconButton(
            // 图标
            icon: const Icon(Icons.menu),
            // 这里可以打开抽屉
            onPressed: () { Scaffold.of(context).openDrawer(); },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          // 一个Widget的列表，对于常用的菜单通常使用IconButton来表示，代表Toolbar中显示的菜单
          actions:<Widget> [
            IconButton(
              icon: const Icon(Icons.search)
            ),
            IconButton(
              icon: const Icon(Icons.settings)
            )
          ],
          // 一个AppBarBottomWidget对象，通常是TabBar。用来在Toolbar标题下面显示一个Tab导航栏
          bottom: TabBar(
            // 未选中的文字的颜色
            unselectedLabelColor: Colors.white,
            // 指示器的颜色
            indicatorColor: Colors.white,
            // 指示器的大小计算方式等
            indicatorSize: TabBarIndicatorSize.label,
            // 显示的界面控制
            tabs: <Widget> [
              Tab(
                icon: Icon(Icons.local_activity)
              ),
              Tab(
                icon: Icon(Icons.local_airport)
              ),
              Tab(
                icon: Icon(Icons.local_atm)
              )
            ]
          ),
        ),
        // 主体部分
        body: TabBarView(
          children: <Widget>[
            HomeListWidget(),
            Icon(Icons.local_atm)
          ],
        ),
        // 添加抽屉
        drawer: DrawerWidget(),
        bottomNavigationBar: HomeBottom(),
      ),
    );
  }
}