import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenampilkanGambar(),
    );
  }
}

//
class TextWidgetAndTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("It's m... m.. my first time senpai"),
      ),
      body: Stack(children: <Widget>[
        Text(
          'Lorem, ipsum',
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'Times New Roman',
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Colors.red[700]),
        ),

        // Solid text as fill
        Text(
          'Lorem, ipsum',
          style: TextStyle(
              fontFamily: 'Times New Roman',
              fontSize: 40,
              color: Colors.grey[300]),
        )
      ]),
    );
  }
}

class TextFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Align pada Flutter'),
      ),
      body: Center(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore tempora repellendus debitis facere blanditiis iste quas consequuntur molestias deserunt quibusdam. Quam incidunt, illo ab placeat vel asperiores voluptatem assumenda reiciendis!',
          style: TextStyle(fontSize: 30, fontFamily: 'Times New Roman'),
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}

class ChildAndContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.purple,
        child: Text(
          'Lorem ipmsum',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class RowFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Layout'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.greenAccent,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: FlutterLogo(
              size: 60.0,
            ),
          )
        ],
      ),
    );
  }
}

class ColumnFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar layout [Row]'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.greenAccent,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: FlutterLogo(
              size: 60.0,
            ),
          )
        ],
      ),
    );
  }
}

class HeightAndWeightAndmarginAndpaddingAndtransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Height And Weight on Flutter '),
      ),
      body: Container(
        transform: Matrix4.rotationZ(0.1),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(left: 50),
        height: 200,
        width: 200,
        alignment: Alignment.center,
        color: Colors.purple,
        child: Text(
          'Lorem ipsum,',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}

class MenampilkanGambar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menggunakan Network Image'),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/91/86/6b/91866b918c9cca0747f483a46943e926.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 280,
            width: 200,
            margin: EdgeInsets.all(20)));
  }
}

// Belajar image
// Dari assets
class BelajarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("belajarFlutter.com"),
      ),
      body: Image.asset('images/anime.jpg'),
    ));
  }
}
