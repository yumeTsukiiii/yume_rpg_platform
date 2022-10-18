import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: false,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Row(
          children: [
            Container(
              width: 256,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('构造器管理'),
                  ),
                  ListTile(
                    title: Text('元素管理'),
                  )
                ],
              ),
            ),
            Expanded(
              child: ConstructorManage(),
            )
          ],
        ));
  }
}

class ConstructorManage extends StatelessWidget {
  const ConstructorManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(),
          SizedBox.fromSize(
            size: Size.fromHeight(8),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    width: 356,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('新增构造器'),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                leading: Icon(Icons.build_circle),
                                // name、alias、description
                                title: Text('property'),
                                subtitle: Text('属性'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.build_circle),
                                title: Text('range_property'),
                                subtitle: Text('范围属性'),
                              ),
                              ListTile(
                                leading: Icon(Icons.build_circle),
                                title: Text('property_change'),
                                subtitle: Text('属性改变'),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox.fromSize(
                  size: Size.fromWidth(8),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text.rich(TextSpan(children: [
                                WidgetSpan(child: Icon(Icons.edit)),
                                TextSpan(
                                    text: '基本信息',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ])),
                              Row(
                                children: [
                                  Expanded(
                                      child: TextFormField(
                                    decoration: InputDecoration(
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelText: '名称'),
                                  )),
                                  SizedBox.fromSize(
                                    size: Size(8, 1),
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                    decoration: InputDecoration(
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelText: '备注'),
                                  ))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 24),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: '描述',
                                      hintText: 'emm',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      border: OutlineInputBorder()),
                                  maxLines: 5,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: FloatingActionButton.extended(
                          onPressed: () {},
                          label: Text('新增构造器'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
