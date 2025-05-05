import 'package:flutter/material.dart';
import 'listitem.dart';
class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877659/bdbfqc16l5k2nhaoc99u.jpg",
        "title": "Android"
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877680/ilnb8qjctbxo2xnrtylf.png",
        "title": "Python"
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877702/oxrvaljxkohs9szceqqt.png",
        "title": "C++"
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877719/agcgvuve4rkmdh6bd5qf.png",
        "title": "PHP"
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877735/k5bhru2686zxbjednwwr.png",
        "title": "Ruby"
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877758/tafqmkrghogfxucf1qrc.png",
        "title": "Java"
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877784/jscq8pzbrs3kuaktersp.png",
        "title": "Rails"
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877809/db9p9tmaiikif6zjatft.jpg",
        "title": "Ajax"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("List_View"),
        backgroundColor: const Color.fromARGB(255, 97, 167, 203),
        foregroundColor: Color.fromARGB(255, 22, 11, 62),
      ),
      body: ListView.builder(
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListitemPage(
                            myItems[index]['img']!, myItems[index]['title']!))),
              child: Card(
                color: const Color.fromARGB(255, 101, 169, 183),
                child: SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      
                      Image.network(
                        myItems[index]['img']!,
                        width: 120,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(myItems[index]['title']!)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}