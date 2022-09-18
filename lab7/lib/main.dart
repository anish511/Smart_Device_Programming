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
        title: Text('Buttons Widget App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(


       //   child: ElevatedButton(
       //   child: Text('Button'),
       //   onPressed: () {},
       //   style: ElevatedButton.styleFrom(
       //       primary: Colors.purple[800],
       //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
       //       textStyle: TextStyle(
       //           fontSize: 40,
       //
       //           fontWeight: FontWeight.bold)),
       //
       // ),

         // child: FlatButton(
         //   onPressed: () {
         //     print('print on consol');
         //   },
         //   child: Text('click Me'),
         //   color: Colors.blue,
         // )

       // child: IconButton(
       //   icon: Icon(
       //     Icons.mail_outline_sharp,
       //     size: 30.0,
       //   ),
       //   tooltip: 'send mail me',
       //   onPressed: () {
       //     print('on console print');
       //   },
       // ),

       //   child: TextButton.icon(
       //   icon: Icon(
       //     Icons.photo_camera,
       //     color:Colors.greenAccent,
       //     size: 50.0,
       //   ),
       //   label: Text(
       //     "Gallery",
       //     style: TextStyle(
       //       color: Colors.black,
       //       fontSize: 40.0,
       //       letterSpacing: 2.0,
       //       backgroundColor: Colors.redAccent,
       //     ),
       //     textAlign: TextAlign.start,
       //   ),
       //   onPressed: () {},
       // ),

          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              icon: Icon(
                Icons.photo_camera,
                color:Colors.greenAccent,
                size: 50.0,
              ),
              label: Text(
                "Gallery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  backgroundColor: Colors.redAccent,
                ),
                textAlign: TextAlign.start,
              ),
              onPressed: () {},

            )
            ,
          )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // must required property...
// making change at here to test hot reloading..click --> click
        // me---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
