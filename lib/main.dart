import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://test.visit.fortech.ro',
      onWebViewCreated: (controller) {
        this.controller = controller;
      },
      onProgress: (progress) {
        print('Loading $progress');
      },
      onPageStarted: (url) {
        print('New url $url');
      },
    ));
  }
}
