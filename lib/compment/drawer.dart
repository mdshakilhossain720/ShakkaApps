import 'package:flutter/material.dart';

class SidebarScreen extends StatefulWidget {
  @override
  _SidebarScreenState createState() => _SidebarScreenState();
}

class _SidebarScreenState extends State<SidebarScreen> {
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
                child: Text(
                  "Waksha",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
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
      body: Center(
        child: Text("Sidebar Navigation Example"),
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
