import 'package:flutter/material.dart';





class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              height: 150,
              color: Colors.purple[50],
              child: Center(child: Text("Bar Chart Placeholder", style: TextStyle(color: Colors.purple))),
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
}

class DashboardCard extends StatelessWidget {
  final Color color;
  final String title;

  const DashboardCard({required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
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
                onPressed: () {},
                child: Text("Show details"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("I want to buy msg"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
