import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter app'),
      ),
      body: Center(
        child: Row(
          children: [
            const Icon(Icons.message),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title', style: Theme.of(context).textTheme.headline4),
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed'
                    ' do eiusmod tempor incididunt ut labore et dolore magna '
                    'aliqua. Ut enim ad minim veniam, quis nostrud '
                    'exercitation ullamco laboris nisi ut aliquip ex ea '
                    'commodo consequat.'),
              ],
            ),
          ],
        )
      ),
    );
  }
}

void main() {
  print('Hello from your Flutter app!');
  runApp(MyApp());
}
