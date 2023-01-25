import 'package:flutter/material.dart';
import 'package:messenger_app_flutter/models/user_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
 
class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
   final RefreshController _refreshController =RefreshController(initialRefresh: false);

  final List<User> users = [
    User(name: 'jefry Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Rosi Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Juvenal Palomino ', email: 'Jefrydep@gmail.com', online: 'disconect', uid: '01223'),
    User(name: 'Ricardo Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Gregoria Palomino ', email: 'Jefrydep@gmail.com', online: 'diconet', uid: '01223'),
    User(name: 'jefry Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Rosi Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Juvenal Palomino ', email: 'Jefrydep@gmail.com', online: 'disconect', uid: '01223'),
    User(name: 'Ricardo Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Gregoria Palomino ', email: 'Jefrydep@gmail.com', online: 'diconet', uid: '01223'),
    User(name: 'jefry Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Rosi Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Juvenal Palomino ', email: 'Jefrydep@gmail.com', online: 'disconect', uid: '01223'),
    User(name: 'Ricardo Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Gregoria Palomino ', email: 'Jefrydep@gmail.com', online: 'diconet', uid: '01223'),
    User(name: 'jefry Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Rosi Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Juvenal Palomino ', email: 'Jefrydep@gmail.com', online: 'disconect', uid: '01223'),
    User(name: 'Ricardo Palomino ', email: 'Jefrydep@gmail.com', online: 'online', uid: '01223'),
    User(name: 'Gregoria Palomino ', email: 'Jefrydep@gmail.com', online: 'diconet', uid: '01223'),

  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.arrow_back_ios,color: Colors.blue,) ,
        actions: const [
          Icon(Icons.check_circle,color: Colors.blue,),
          SizedBox(width: 20,)

        ],
        backgroundColor: Colors.white,
        title: const Text('Jefry palomino',style: TextStyle(color: Colors.black45),),
      ),
      body: SmartRefresher(
        onRefresh: _addUsers,
        header: const WaterDropMaterialHeader(
          backgroundColor: Colors.lightBlue,
          
        ),
        controller: _refreshController,
        enablePullDown: true,
        child: _userListView()),
    );
  }

  ListView _userListView() {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: users.length,

      itemBuilder: (context, index) {
      return _usersListile(users[index]);
    },
    separatorBuilder: (context, index) => const Divider(),);
  }

  ListTile _usersListile(User user) {
    return ListTile(
      subtitle: Text(user.email),
        trailing:Container(
          decoration: BoxDecoration(
            color: user.online == 'online' ?Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(100)
          ),
          width: 10,height: 10,) ,
        title:  Text(user.name),
        leading: CircleAvatar(
          child: Text(user.name.substring(0,2)),
        ),
        
      );
  }
  _addUsers()async{
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();

  }
}