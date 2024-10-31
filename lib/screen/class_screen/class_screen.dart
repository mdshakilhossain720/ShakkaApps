import 'package:flutter/material.dart';

class ClassManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: () {},
      //   ),
      //   title: Row(
      //     children: [
      //       Icon(Icons.school, color: Colors.purple),
      //       SizedBox(width: 8),
      //       Text("Abc School & college"),
      //     ],
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 16.0),
      //       child: ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.purple,
      //         ),
      //         onPressed: () {},
      //         child: Text("Create Class"),
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  alignment: Alignment.center,
                  height:34 ,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff8C2FEA),
                  ),
                  child: Text("Create Class",style: TextStyle(fontSize: 12,color: Colors.white),),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text("NO")),
                    DataColumn(label: Text("Class name")),
                    DataColumn(label: Text("Monthly fees")),
                    DataColumn(label: Text("Action")),
                  ],
                  rows: [
                    _buildDataRow(1, "Class One", "12000", context),
                    _buildDataRow(2, "Class Two", "12000", context),
                    _buildDataRow(3, "Class Three", "12000", context),
                    _buildDataRow(4, "Class Four", "12000", context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataRow _buildDataRow(int no, String className, String fees, BuildContext context) {
    return DataRow(cells: [
      DataCell(Text(no.toString())),
      DataCell(Text(className)),
      DataCell(Text(fees)),
      DataCell(Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: Size(50, 30),
            ),
            child: Text(
              "Edit",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: Size(50, 30),
            ),
            child: Text(
              "Delete",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
    ]);
  }
}
