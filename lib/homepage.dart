import 'package:flutter/material.dart';
import 'converter.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg)));
  }
  myAlertDialog(title,content,context){
    return showDialog(context: context,builder: (context)
    {
      return Expanded(child: AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          ElevatedButton(onPressed: () {
            mySnackBar("Successful", context);
            Navigator.of(context).pop();
          }, child: Text("Yes"))
        ],
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(93, 14, 152, 143),
        foregroundColor: const Color.fromARGB(255, 10, 57, 7),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                currentAccountPicture: Image.network(
                    "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877659/bdbfqc16l5k2nhaoc99u.jpg"),
                currentAccountPictureSize: Size.square(40),
                accountName: Text("Name"),
                accountEmail: Text("Email"),
              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homepage();
                  }));
                }),
            ListTile(
                leading: Icon(Icons.swap_horiz),
                title: Text("Converter"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Converterpage();
                  }));
                }),
            ],),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(123, 33, 149, 243),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Container(
        height: 1000,
        width: 500,
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.fromLTRB(80, 50, 0, 70),
        decoration: BoxDecoration(
          color: const Color.fromARGB(103, 12, 125, 129),
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Image.asset('assets/images/pic.jpg'),
        ),
      );
    // );
  }
}