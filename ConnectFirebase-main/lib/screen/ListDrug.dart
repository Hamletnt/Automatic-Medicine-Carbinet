import 'package:flutter/material.dart';

class ListDrug extends StatelessWidget {
  final String title;

  const ListDrug({Key? key, required this.title}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text('รายการยา'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(10)),
              constraints: BoxConstraints(
                minHeight: 50, // กำหนดความสูงขั้นต่ำ
              ),
              width: MediaQuery.of(context).size.width, //ไห้ width 100%
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                    "Mr./Mrs. Pull from database\nID : pull from database",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(10)),
              constraints: BoxConstraints(
                minHeight: 50, // กำหนดความสูงขั้นต่ำ
              ),
              width: MediaQuery.of(context).size.width, //ไห้ width 100%
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                    "โรงพยาบาลที่จ่ายยา : database\nชื่อแพทย์ที่จ่ายยา : database",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 210, 243, 211),
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(
                minHeight: 500, // กำหนดความสูงขั้นต่ำ
              ),
              width: MediaQuery.of(context).size.width, //ไห้ width 100%
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: DataTable(
                  dataTextStyle: TextStyle(fontSize: 18),
                  columns: [
                    DataColumn(
                        label: Text('ชื่อยา', style: TextStyle(fontSize: 15))),
                    DataColumn(
                        label: Text('สรรพคุณ', style: TextStyle(fontSize: 15))),
                    DataColumn(
                        label: Text('จำนวน', style: TextStyle(fontSize: 15))),
                    DataColumn(
                        label: Text('ราคา', style: TextStyle(fontSize: 15))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('ยา A')),
                      DataCell(Text('สรรพคุณ A')),
                      DataCell(Text('10')),
                      DataCell(Text('100')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('ยา B')),
                      DataCell(Text('สรรพคุณ B')),
                      DataCell(Text('20')),
                      DataCell(Text('200')),
                    ]),
                    // เพิ่มแถวข้อมูลเพิ่มเติมตามต้องการ
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(10)),
              constraints: BoxConstraints(
                minHeight: 50, // กำหนดความสูงขั้นต่ำ
              ),
              width: MediaQuery.of(context).size.width, //ไห้ width 100%)
              child: Center(
                  child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size(150, 60),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      minimumSize: Size(150, 60),
                    ),
                    child: Text(
                      'Genarate QR',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 225, 246, 227),
    );
  }
}
