import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_regis/screen/signin_screen.dart';
import 'package:login_regis/screen/SettingPage.dart';
import 'package:login_regis/screen/HomeReal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAjTr5On4kNpiyKckFmOj0RvxngJ8TXapI',
        appId: '1:1024655228288:android:88334d56fccd538ab39565',
        messagingSenderId: '1024655228288',
        projectId: 'teamproject2-2f930',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  checkAuthStatus();
}

Future<void> checkAuthStatus() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;

  Widget initialScreen;

  if (user != null) {
    // ถ้ามีผู้ใช้ล็อกอินอยู่แล้ว
    initialScreen = MyHomePage(title: 'Your App Title');
  } else {
    // ถ้าไม่มีผู้ใช้ล็อกอินอยู่ ให้ไปที่หน้า SignInScreen
    initialScreen = SignInScreen();
  }

  runApp(
    MaterialApp(
      home: initialScreen,
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
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
