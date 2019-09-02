import 'package:flutter/material.dart';

class App extends StatefulWidget {
    AppState createState() {
        return AppState();
    }
}

class AppState extends State<App> {
    int counter = 0;

    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('See some images')
                ),
                body: Text('${counter}'),
                floatingActionButton: FloatingActionButton(
                    onPressed: () {
                        setState(() {
                            counter++;
                        });
                    },
                    child: Icon(Icons.add)
                ),
            ),
        );
    }
}
