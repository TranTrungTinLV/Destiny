import 'package:flutter/material.dart';
import 'StoryBrain.dart';

StoryBrain storyBrain = StoryBrain();

void main() => runApp(Destinis());

class Destinis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          constraints: BoxConstraints.expand(),
          child: SafeArea(),
        ),
      ),
    );
  }
}

class SafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DesPage(),
    );
  }
}

class DesPage extends StatefulWidget {
  @override
  State<DesPage> createState() => _DesPageState();
}

List<Icon> keeper_core = [];

class _DesPageState extends State<DesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  storyBrain.getStory(),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: FlatButton(
            color: Colors.green,
            child: Text(
              storyBrain.getchoice1(),
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              setState(() {
                // keeper_core.add(Icon(
                //
                //   Icons.check,
                //   color: Colors.green,
                // ));
                storyBrain.check(1);
              });

            },
          ),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: FlatButton(
            color: Colors.red,
            onPressed: () {
              setState(() {
                // keeper_core.add(Icon(
                //   Icons.close,
                //   color: Colors.red,
                // ));
                storyBrain.check(2);
              });

            },
            child: Text(
              storyBrain.getchoice2(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        )),

        //TODO : ADD ROW KEEPPER
        Row(
          children: keeper_core,
        )
      ],
    );
  }
}
