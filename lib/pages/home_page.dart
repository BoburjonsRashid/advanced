import 'package:flutter/material.dart';

import '../servive/log_service.dart';
import '../servive/utils_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter modul 6'),
      ),
      body: Container(padding: const EdgeInsets.all(30),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton( color: Colors.blue,
              onPressed: () {
                Utils.showToast ("Welcome to PDP");
                Utils.deviceParams().then((value) => {
                LogService.i(value.toString()), });
              },
              child: const Text("Click Me"))
          ],
        ),
      ),
    );
  }
}