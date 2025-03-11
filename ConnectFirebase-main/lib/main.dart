import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'IconButton.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyHomePage(title: 'Your App Title'),
    ),
  );
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Hello"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                onPressSetting();
              },
              iconSize: 30.0,
            ),
          ),
          // สามารถเพิ่ม IconButton หรือ Widget อื่น ๆ ได้ตามต้องการ
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(15.0), // ปรับความสูงตามที่ต้องการ
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(5.0), // ปรับตำแหน่งของ Text ตามต้องการ
              child: Text(
                "Mr.Nemo",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: CustomBody(title: widget.title),
      backgroundColor: const Color.fromARGB(255, 225, 246, 227),
    );
  }

  onPressSetting() {
    print("setting");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondRoute(title: widget.title)),
    );
  }
}
