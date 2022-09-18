// import 'package:flutter/material.dart';
// void main() => runApp(MaterialApp(
//   home: FinalTest1(),
// ));
// class FinalTest1 extends StatefulWidget {
//   @override
//   State<FinalTest1> createState() => _FinalTest1State();
// }
//
// class _FinalTest1State extends State<FinalTest1> {
//
//   num age = 20.0;
// // const FinalTest1({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple[100],
//       appBar: AppBar(
//         title: Text('Introduction'),
//         centerTitle: true,
//         backgroundColor: Colors.purple[600],
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//         // following can't changes the variables 'state' value
//         // age++;
//         // apply following code to change any state variable value
//           setState(() {
//             age += 1;
//           });
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.purple,
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: (){
//       //     setState((){
//       //       age -= 1;
//       //     });
//       //   },
//       //   child: Icon(Icons.exposure_minus_1),
//       //   backgroundColor: Colors.purple,
//       // ),
//
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/avatar.png'),
//             ),
//             Text(
//               'NAME: ',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Tyler Durden',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 40),
//             Text(
//               'AGE',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//
//               '$age',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_rounded,
//                   color: Colors.deepPurple[800],
//                 ),
//                 SizedBox(width: 12.0),
//                 Text(
//                   'iamhero.ce@ddu.ac.in',
//
//                   style: TextStyle(
//
//                     color: Colors.black54,
//                     fontSize: 16.0,
//                     letterSpacing: 1.5,
//
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height:335),
//             Row(
//               children: [
//
//                  FlatButton(
//                   onPressed: () {
//                     setState(() {
//                       age -= 1;
//                     });
//                   },
//                   child: Text('subtract age'),
//                   color: Colors.purple,
//                 )
//
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// /*
// // following is state ful class which create object of `state` widget..
// class Test1 extends StatefulWidget {
//   const Test1({Key? key}) : super(key: key);
//
//   @override
//   State<Test1> createState() => _Test1State();
// }
//
// // following class builds 'state object' for above 'state full' widget...
// // In this class we can define data which can change their states
// class _Test1State extends State<Test1> {
//   @override
//   Widget build(BuildContext context) {
//     // above state widget Test1 return this container...
//     // widgetory... data changes at runtime this will cause rebuild
//     return Container();
//   }
// } */

import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'Working jobs we hate to buy shits we do not need',author:
    'Tyler durden'),
    Quote(author: 'Narrator', text: 'Losing hopes was freedom'),
    Quote(text: 'Remember. Hope is a good thing, maybe the best of things, and no good thing ever dies.',author:
    'Andy dufresne'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Colors.black,

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,

                color: Colors.deepPurple,

              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Quotes'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
    ),
    );
  }
}