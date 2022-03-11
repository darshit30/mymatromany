import 'package:flutter/material.dart';
class DrawerAll extends StatelessWidget {
  const DrawerAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("User Name"),
            accountEmail: Text(
              "User Email Address",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.longestLine,
            ),
            currentAccountPicture: CircleAvatar(
              radius: 0.0,
              backgroundColor: Colors.black,
              //backgroundImage:
              //   NetworkImage("http://timeye.com/images/widgets/mona.jpg"),
            ),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('ListTile'),
            tileColor: Colors.white,
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text("Home"),
            // subtitle: Text("Personal Information"),
            //  trailing: Icon(Icons.edit_outlined),
            //  iconColor: Colors.green,
            // textColor: Colors.blue,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("account"),
            subtitle: Text("Personal Information"),
            trailing: Icon(Icons.edit_outlined),
            iconColor: Colors.black,
            // isThreeLine: true,
            //iconColor: Colors.green,
            // textColor: Colors.blue,
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
            iconColor: Colors.grey,
            //  onTap: () => Navigator.pop(context)
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
            iconColor: Colors.red,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help Center"),
            iconColor: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Feedback"),
            focusColor: Colors.redAccent,
            iconColor: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            //  focusColor: Colors.redAccent,
            iconColor: Colors.red,
          )
        ],
      ),
    );
  }
}
