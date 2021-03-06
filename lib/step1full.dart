import 'package:flutter/material.dart';

void main() => runApp(new MyApp());





Column buildButtonColumn(IconData icon, String label,context){
  Color color = Theme.of(context).primaryColor;

  return new Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      new Icon(icon, color: color),
      new Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: new Text(
          label,
          style: new TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          )
        )
      )
    ]
  );
}

Widget textSection = new Container(
  padding: const EdgeInsets.all(32.0),
  child: new Text(
            '''
Darling in the Franxx (Japanese: ダーリン・イン・ザ・フランキス Hepburn: Dārin In Za Furankisu) is a 2018 Japanese science fiction animated television series co-produced by Trigger and CloverWorks that premiered on January 13, 2018.[5][6] The series was announced at Trigger's Anime Expo 2017 panel in July 2017.[7] A manga adaptation by Kentaro Yabuki and another 4-koma began serialization on January 14, 2018.
        ''',
    softWrap: true,
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override


  Widget build(BuildContext context) {
  // Those three buttons
  Widget buttonSection = new Container(
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButtonColumn(Icons.call, 'CALL',context),
      buildButtonColumn(Icons.near_me,'ROUTE',context),
      buildButtonColumn(Icons.share,'SHARE',context),
    ],
  ),
);

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
                  child: new Text(
                    'Darling in the franxx episode 08',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Where ZeroTwo bring 016 to FranXX',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
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
    return new MaterialApp(


      title: "Darling's Layout",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Darling in the Franxx'),
        ),
        body: new ListView(
          children:[
            new Image.asset(
            'images/two.jpeg',
            width:600.0,
            height:240.0,
            fit:BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ]
        )
      ),
    );
  }
}
