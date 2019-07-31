import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app/list_item.dart';
import 'package:http/http.dart' as http;

import 'entity/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _newsList;

  void getData() async {
    http.Response response = await http.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=821a22ad51e240fb9c131c4b00009630");
    setState(() {
      _newsList.addAll(News.fromJson(json.decode(response.body)).articles);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListItem(_newsList[index]),
      )),
    );
  }
}
