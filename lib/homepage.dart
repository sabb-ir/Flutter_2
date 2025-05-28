import 'package:flutter/material.dart';
import 'converter.dart';
import 'listview.dart';
import 'gridview.dart';
import 'formpage.dart';
import 'login_page.dart';

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
        title: Text("Homepage", style: TextStyle(color: Color.fromARGB(255, 22, 11, 62))),
        backgroundColor: const Color.fromARGB(93, 17, 202, 189),
        foregroundColor: const Color.fromARGB(255, 22, 11, 62),
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
                decoration: BoxDecoration(color: const Color.fromARGB(255, 142, 207, 213)),
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
                    return ConverterPage();
                  }));
                }),
            ],),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(122, 8, 57, 96),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Center(
       child: Container(
        height: 1500,
        width: 600,
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.fromLTRB(80, 50, 0, 70),
        decoration: BoxDecoration(
          color: const Color.fromARGB(103, 57, 190, 243),
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              'assets/images/flutter.jpg',
              height: 200, 
              fit: BoxFit.cover, 
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Listview()),
                );
              },
              child: Text("ListView Page"),
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gridview()),
                );
              },
              child: Text("GridView Page"),
            ),
              SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              },
              child: Text("Register"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),),
    ),);
  }
}