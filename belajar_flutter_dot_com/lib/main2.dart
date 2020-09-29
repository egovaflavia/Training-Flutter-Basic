import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(LatihanGridView());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenggunakanListViewBuilder(),
    );
  }
}

class MenampilkanGambarLokal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menampilkan Gambar Lokal'),
        ),
        body: Image.asset('images/anime.jpg'),
      ),
    );
  }
}

class MenampilkanGambarInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dela Suko Lalok'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                  child: Image(
                      image: CachedNetworkImageProvider(
                          "https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg"))),
              Container(
                color: Colors.orangeAccent,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Dela Lalok Taruih',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
    );
  }
}

class MenggunakanListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Penggunaan List View'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Penggunaan List View',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                '''Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab neque iste non nesciunt repellendus obcaecati veritatis perferendis nobis at quis tempora assumenda aliquam, pariatur cupiditate quaerat quo harum vel? Labore Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab neque iste non nesciunt repellendus obcaecati veritatis perferendis nobis at quis tempora assumenda aliquam, pariatur cupiditate quaerat quo harum vel? LaboreLorem ipsum dolor sit amet consectetur adipisicing elit. Ab neque iste non nesciunt repellendus obcaecati veritatis perferendis nobis at quis tempora assumenda aliquam, pariatur cupiditate quaerat quo harum vel? LaboreLorem ipsum dolor sit amet consectetur adipisicing elit. Ab neque iste non nesciunt repellendus obcaecati veritatis perferendis nobis at quis tempora assumenda aliquam, pariatur cupiditate quaerat quo harum vel? LaboreLorem ipsum dolor sit amet consectetur adipisicing elit. Ab neque iste non nesciunt repellendus obcaecati veritatis perferendis nobis at quis tempora assumenda aliquam, pariatur cupiditate quaerat quo harum vel? LaboreLorem ipsum dolor sit amet consectetur adipisicing elit. Ab neque iste non nesciunt repellendus obcaecati veritatis perferendis nobis at quis tempora assumenda aliquam, pariatur cupiditate quaerat quo harum vel? LaboreLorem ipsum dolor sit amet consectetur adipisicing elit. Ab neque iste non nesciunt repellendus obcaecati veritatis perferendis nobis at quis tempora assumenda aliquam, pariatur cupiditate quaerat quo harum vel? Labore''',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenggunakanListViewBuilder extends StatelessWidget {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menggunakan List Builder'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  bulan[index],
                  style: TextStyle(fontSize: 30),
                )),
          );
        },
        separatorBuilder: (context, position) {
          if (position % 5 == 0) {
            return Container(
              color: Colors.greenAccent,
              child: Text(
                'Ini adalah separator Builder',
                style: TextStyle(fontSize: 20),
              ),
            );
          } else {
            return Divider();
          }
        },
        itemCount: bulan.length,
      ),
    );
  }
}

class GridViewFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Grid Pada Flutter'),
          ),
          body: GridView.extent(
            maxCrossAxisExtent: 400,
            children: <Widget>[
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
            ],
          )),
    );
  }
}

class LatihanGridView extends StatelessWidget {
  final List alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan GridView'),
        ),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: <Widget>[
            GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              children: List.generate(alphabet.length, (index) {
                return Container(
                  height: 100,
                  child: Card(
                    child: Center(
                      child: Text(
                        alphabet[index],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  color: Colors.deepPurpleAccent,
                );
              }),
            ),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
