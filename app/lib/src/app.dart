import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
    AppState createState() {
        return AppState();
    }
}

class AppState extends State<App> {
    int counter = 0;
    List<ImageModel> images = [];

    void fetchImage() async {
        counter++;
        String url = 'http://jsonplaceholder.typicode.com/photos/${counter}';
        final resp = await get(url);
        final ImageModel imageModel = ImageModel.fromJson(json.decode(resp.body));

        setState(() {
            images.add(imageModel);
        });
    }

    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('See some images')
                ),
                body: ImageList(images),
                floatingActionButton: FloatingActionButton(
                    onPressed: fetchImage,
                    child: Icon(Icons.add)
                ),
            ),
        );
    }
}
