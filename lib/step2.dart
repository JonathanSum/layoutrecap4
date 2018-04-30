import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

Widget titleSection = new Container(
  padding: const EdgeInsets.all(32.0),
  child: new Row(
    children: [
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text("Ep 08",
                    style: new TextStyle(fontWeight: FontWeight.bold))),
            new Text("Where ZeroTwo holding 016's hand and head to the FranXX",
                style: new TextStyle(
                  color: Colors.grey[500],
                )),
          ],
        ),
      ),
      new Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      new Text('41'),
    ],
  ),
);

Column buildButtonColumn(IconData icon, String label, context) {
  Color color = Theme.of(context).primaryColor;
  return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(label,
                style:
                    new TextStyle(fontWeight: FontWeight.w400, color: color)))
      ]);
}

Widget textSection = new Container(
  padding: const EdgeInsets.all(32.0),
  child: new Text('''The anime began international distribution simultaneously upon its release, with the streaming service Crunchyroll internationally simulcasting the series, with Aniplus Asia simulcasting the series to Southeast Asia. Service partner Funimation began the
   dubbed release of the series on February 1.[9][10]''',
softWrap: true));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget manyButtons = new Container(
    child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children:[
      buildButtonColumn(Icons.ac_unit,"AC", context),
      buildButtonColumn(Icons.tab,"Tap", context),
      buildButtonColumn(Icons.save,"Save", context),
      buildButtonColumn(Icons.school,"School", context)
    ]));
    return new MaterialApp(
      title: "Darling's Layout",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Darling in the Franxx'),
          ),
          body: new ListView(children: [
            new Image.asset(
              'images/two.jpeg',
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            manyButtons,
            textSection
          ])),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
