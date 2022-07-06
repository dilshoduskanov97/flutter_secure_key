import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var allValues = <Widget>[];
  var serverKey = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     serverKey = FlutterConfig.get("SERVER_KEY");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(serverKey),
      ),
      body: Center(
          child: Column(children: [
            ...allValues,
            SizedBox(
              height: 20,
            ),
            Text('Values of fabric Id: ${FlutterConfig.get('SERVER_KEY')}')
          ])),
    );
  }
}
