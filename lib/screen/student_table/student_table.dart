import 'package:flutter/material.dart';

class StudentsScreen extends StatefulWidget {
  @override
  _StudentsScreenState createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  String selectedClass = 'All';
  String selectedSection = 'All';
  String selectedShift = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Students",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Search Students",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  DropdownButton<String>(
                    value: selectedClass,
                    onChanged: (value) {
                      setState(() {
                        selectedClass = value!;
                      });
                    },
                    items: ['All', 'A', 'B', 'C']
                        .map((classItem) => DropdownMenuItem<String>(
                      value: classItem,
                      child: Text(classItem),
                    ))
                        .toList(),
                    hint: Text("Class"),
                  ),
                  SizedBox(width: 16),
                  DropdownButton<String>(
                    value: selectedSection,
                    onChanged: (value) {
                      setState(() {
                        selectedSection = value!;
                      });
                    },
                    items: ['All', '1', '2', '3']
                        .map((section) => DropdownMenuItem<String>(
                      value: section,
                      child: Text(section),
                    ))
                        .toList(),
                    hint: Text("Section"),
                  ),
                  SizedBox(width: 16),
                  DropdownButton<String>(
                    value: selectedShift,
                    onChanged: (value) {
                      setState(() {
                        selectedShift = value!;
                      });
                    },
                    items: ['All', 'Day', 'Night']
                        .map((shift) => DropdownMenuItem<String>(
                      value: shift,
                      child: Text(shift),
                    ))
                        .toList(),
                    hint: Text("Shift"),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text("No")),
                      DataColumn(label: Text("Roll No")),
                      DataColumn(label: Text("Student Name")),
                      DataColumn(label: Text("Unique ID")),
                      DataColumn(label: Text("Class")),
                      DataColumn(label: Text("Section")),
                      DataColumn(label: Text("Shift")),
                      DataColumn(label: Text("Group")),
                      DataColumn(label: Text("Phone Number")),
                      DataColumn(label: Text("")),
                    ],
                    rows: List<DataRow>.generate(
                      10,
                          (index) => DataRow(
                        cells: [
                          DataCell(Text((index + 1).toString())),
                          DataCell(Text("0${index + 1}")),
                          DataCell(Text("Student ${index + 1}")),
                          DataCell(Text("UID${index + 1234}")),
                          DataCell(Text("A")),
                          DataCell(Text("1")),
                          DataCell(Text("Day")),
                          DataCell(Text("Science")),
                          DataCell(Text("0123456789")),
                          DataCell(IconButton(
                            icon: Icon(Icons.edit, color: Colors.grey),
                            onPressed: () {},
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
