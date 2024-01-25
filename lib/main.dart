// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _getListagemAPI() {
    http.get(
      Uri.https('api.themoviedb.org', '/4/list/1'),
      headers: {
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMTcwNWVjY2EyYmU2OWQyMmMyZGRhYjQxOTMzYmY4OCIsInN1YiI6IjY1YjE5YTUxMGYyZmJkMDE0YTY2NTM5MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.RDoCVxbKMTUbyJycjbFFy-aUrcjax3_n23KCOhc0eBQ',
        'content-type': 'application/json;charset=utf-8'
      },
    ).then(
      (Response value) => print(value.body),
    );
  }

  @override
  void initState() {
    super.initState();
    _getListagemAPI();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text('Terceira Aula'),
        ),
      ),
    );
  }
}
