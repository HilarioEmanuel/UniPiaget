import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unipiaget/ui_widgets/money_student/money_student.dart';
import 'package:unipiaget/ui_widgets/student/student.dart';

import '../home_page/home_page.dart';
import '../inscricao/inscricao.dart';
import '../notification/notifications.dart';
import 'dashboard.dart';


class NoticiasWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feed de Notícias',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NewsFeed(),
    );
  }
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed de Notícias'),
      ),
      body: ListView(
        children: List.generate(10, (index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://placekitten.com/200/200', // Imagem de exemplo
                    ),
                  ),
                  title: Text('Nome do Usuário'),
                  subtitle: Text('Há 2 horas'),
                ),
                Image.network(
                  'https://placekitten.com/400/200', // Imagem de exemplo
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Descrição da Notícia',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Curtir'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Comentar'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Compartilhar'),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
