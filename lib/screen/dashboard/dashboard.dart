import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:shakkaapps/utils/image_path.dart';

import '../class_screen/class_screen.dart';
import '../student_table/student_table.dart';





class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.purple,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Image.asset(ImagePath.spalshImage),
                

              ),
              _buildDrawerItem(Icons.dashboard, "Dashboard"),
              _buildDrawerItem(Icons.class_, "Class"),
              _buildDrawerItem(Icons.person, "Teacher"),
              _buildDrawerItem(Icons.school, "Student"),
              _buildDrawerItem(Icons.event_available, "Attendance"),
              _buildDrawerItem(Icons.account_balance, "Finance"),
              _buildDrawerItem(Icons.people, "Staff"),
              _buildDrawerItem(Icons.message, "SMS"),
              _buildDrawerItem(Icons.assignment, "Exam"),
              _buildDrawerItem(Icons.assessment, "Result"),
              _buildDrawerItem(Icons.announcement, "Notice"),
              _buildDrawerItem(Icons.library_books, "Library"),
              _buildDrawerItem(Icons.settings, "Settings"),
              _buildDrawerItem(Icons.extension, "Add-ons"),
              Divider(color: Colors.white54),
              ListTile(
                leading: Icon(
                  Icons.dark_mode,
                  color: Colors.white,
                ),
                title: Text(
                  "Dark mode",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                  activeColor: Colors.white,
                  activeTrackColor: Colors.purpleAccent,
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(

        leading: Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("ABC School & College"),
            SizedBox(width: 8),
            Icon(Icons.account_circle),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                DashboardCard(color: Colors.blue, title: "10 Teachers"),
                DashboardCard(color: Colors.green, title: "10,000 Total due"),
                DashboardCard(color: Colors.red, title: "15,000 Expenses (this month)"),
                DashboardCard(color: Colors.orange, title: "2 Upcoming Exam"),
                DashboardCard(color: Colors.purple, title: "18 Attendance (per day)"),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'User status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),


        SizedBox(
          height: 200,
          child: BarChart(
            BarChartData(
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(
                  tooltipBorder: BorderSide(color: Color(0xFF607D8B)),


                ),
              ),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true),
                ),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              barGroups: [
                BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(
                      toY: 8,
                      color: Colors.blue,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      toY: 10,
                      color: Colors.blue,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 2,
                  barRods: [
                    BarChartRodData(
                      toY: 14,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),),
        ),









            SizedBox(height: 24),
            Text(
              'Income & Expense',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              height: 150,
              color: Colors.purple[50],
              child: Center(child: Text("Line Chart Placeholder", style: TextStyle(color: Colors.purple))),
            ),
            SizedBox(height: 24),
            MessageCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(

      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        Icons.arrow_drop_down,
        color: Colors.white70,
      ),
      onTap: () {
        // Handle navigation
      },
    );
  }
}

class DashboardCard extends StatelessWidget {
  final Color color;
  final String title;

  const DashboardCard({required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 106,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Message spend record',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('9/3/2023', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          Container(
            height: 40,
            color: Colors.purple[50],
            child: Center(child: Text("300/500", style: TextStyle(color: Colors.purple))),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>StudentsScreen()));
                },
                child: Text("Show details",style: TextStyle(fontSize: 12,color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>ClassManagementScreen()));
                },
                child: Text("I want to buy msg",style: TextStyle(fontSize: 12,color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
            ],
          ),
        ],
      ),
    );
  }



}
