import 'package:flutter/material.dart';
import 'splashscreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen2(),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
//       home: const MyHomePage(title: 'Raion Internship'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.blue, title: Text(widget.title)),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),

//         child: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 label: Text('Email'),
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             Text('Login Page'),
//             TextField(
//               decoration: InputDecoration(
//                 label: Text('Password'),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 label: Text('Name'),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             ElevatedButton(onPressed: () {}, child: Text('Login')),
//           ],
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
