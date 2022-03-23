import 'package:flutter/material.dart';
import 'package:newmatromany/Model/table_user.dart';
import 'package:newmatromany/database.dart';
class UserListScreen extends StatefulWidget {
  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: FutureBuilder<List<TblUserModel>>(
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(snapshot.data![index].UserName),
                  ),
                );
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return Container();
          }
        },
        future: DatabaseHelper().getUserList(),
      ),
    );
  }
}
