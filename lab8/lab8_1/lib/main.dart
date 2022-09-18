import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of
  // layout manager..
  home: HomeScreen(),
));
// making your own custom stateless widget....
// used in Hot reload and also useful in reuse...DRY feature
class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'HELLO FLUTTER...Lab 8_1'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

        /*body: // only for padding purpose....
            // instead of container we can directly used the padding widget...
            // it can't support marging, color..etc....
           // for both and other we can use container widget
        Padding(
          padding: EdgeInsets.all(50),
          child: Text('Hello only padding'),
        ),*/

       /* Container(
          // padding is the inside space management of component
          padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 80.0),
          // EdgeInsets.fromLTRB(30, 40, 50, 60),
          // EdgeInsets.all(20),
          // margin is outside-surround space management of component
          margin: EdgeInsets.all(20),
          color: Colors.blueGrey[400],
          child: Text('Hello'),
        ), */

      /*body: Row(
        children: [
          Text('HELLO ROW'),
          FlatButton(
            onPressed: () {},
            color: Colors.purple,
            child: Text('press me'),
          ),
          Container(
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
        ],
      ),*/

      body:
        //Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.baseline, // may generate error....
        //children: [
 /*         Text('HELLO ROW'),
          FlatButton(
            onPressed: () {},
            color: Colors.purple,
            child: Text('press me'),
          ),
  */      Row(
            children: [

              // Text('hello ddu,... '),
              // Text(' ...Hello 5th sem students....'),
              // Container(
              //   color: Colors.deepPurple[800],
              //   padding: EdgeInsets.all(20.0),
              //   margin: EdgeInsets.all(20),
              //   child: Text('inside'),
              // ),
                 Container(
                    color: Colors.limeAccent,
                    padding: EdgeInsets.fromLTRB(30.0,30.0,120.0,30.0),
                    child: Text('1'),
                  ),

              Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(30.0),
                child: Text('2'),
              ),
              Container(
                color: Colors.green[800],
                padding: EdgeInsets.all(30.0),
                child: Text('3'),

              ),
            ],
          ),

    );
  }
}
