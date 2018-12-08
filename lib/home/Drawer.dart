import 'package:flutter/material.dart';


class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // 配合ListView使用，一个列表
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // UserAccountsDrawerHeader类,用于一个显示用户的抽屉头部
          UserAccountsDrawerHeader(
            // 放在左上角的小部件，代表用户的账户
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://d.hiphotos.baidu.com/image/h%3D300/sign=e6cb69522534349b6b066885f9eb1521/91ef76c6a7efce1b5ef04082a251f3deb58f659b.jpg'),
            ),
            // 小部件，显示用户的用户名，它放在currentAccountPicture下方的左侧
            accountName: Text('Murlin', style: TextStyle(),),
            // 小部件，表示用户的邮箱，它显示在accountName下方的左侧
            accountEmail: Text('Murlin@qq.com', style: TextStyle(),),
            // 标题的背景样式
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage('http://d.hiphotos.baidu.com/image/h%3D300/sign=e6cb69522534349b6b066885f9eb1521/91ef76c6a7efce1b5ef04082a251f3deb58f659b.jpg'),
                // BoxFit排版方式，cover就是覆盖满
                fit: BoxFit.cover
              )
            ),
          ),
          // 单个固定高度的行，可以有前导和尾随图标
          ListTile(
            // 文字
            title: Text('activity', textAlign: TextAlign.right),
            // 前面部分的图标
            leading: Icon(Icons.local_atm),
            // 尾随的图标
            trailing: Icon(Icons.local_airport),
            // 点击事件
           
          ),
          ListTile(
            // 文字
            title: Text('activity', textAlign: TextAlign.right),
            // 前面部分的图标
            leading: Icon(Icons.local_atm),
            // 尾随的图标
            trailing: Icon(Icons.local_airport),
            // 点击事件
         
          ),
          ListTile(
            // 文字
            title: Text('activity', textAlign: TextAlign.right),
            // 前面部分的图标
            leading: Icon(Icons.local_atm),
            // 尾随的图标
            trailing: Icon(Icons.local_airport),
            // 点击事件
           
          )
        ],
      ),
    );
  }
}