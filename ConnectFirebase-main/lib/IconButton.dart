import 'package:flutter/material.dart';
import 'ListDrug.dart';


class CustomBody extends StatelessWidget{
    final String title;
    CustomBody({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container( //กล่อง
          decoration: BoxDecoration(
            color: Colors.green[200],
            borderRadius: BorderRadius.circular(10)
          ),
          height: 250,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              print("QRGen");
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ListDrug(title: title)),
                            );
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('ออกใบรับยา',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('จองคิวหมอ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              // โค้ดที่คุณต้องการให้ทำงานเมื่อถูกคลิก
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('ใบรับรอง\nโตวิด 19',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              // โค้ดที่คุณต้องการให้ทำงานเมื่อถูกคลิก
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('ค้นหา\nหน่วยบริการ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:15.0,left: 15 ),
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              // โค้ดที่คุณต้องการให้ทำงานเมื่อถูกคลิก
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('ผลตรวจ ATK',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:15.0,left: 30),
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              // โค้ดที่คุณต้องการให้ทำงานเมื่อถูกคลิก
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('soon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:15.0,left: 45),
                    
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              // โค้ดที่คุณต้องการให้ทำงานเมื่อถูกคลิก
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('soon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:15.0,left: 45),
                    child: Column(children: [
                      Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              // โค้ดที่คุณต้องการให้ทำงานเมื่อถูกคลิก
                            },
                            iconSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8), // ระยะห่างระหว่าง Icon และ Text
                      Text('soon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ))
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}