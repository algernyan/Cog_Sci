import 'package:cog_sci_app/research.dart';
import 'package:cog_sci_app/vr_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'database.dart';
import 'forum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: FToastBuilder(),
      title: 'CogSciApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'MindNest'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Add your onPressed code here!
        //   },
        //   backgroundColor: Colors.green,
        //   child: const Icon(Icons.message),
        // ),
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Psychologist Knowledgebase", icon: Icon(Icons.book)),
              Tab(text: "VR/AR Knowledgebase", icon: Icon(Icons.book)),
              Tab(text: "Research", icon: Icon(Icons.document_scanner_sharp)),
              Tab(text: "Forum", icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildDatabaseList(context),
            buildVRDatabaseList(context),
            buildResearchList(context),
            buildForumList(context),
          ],
        ),
      ),
    );
  }
}
