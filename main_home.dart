import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import your home screen
import 'courses_screen.dart'; // Import your courses screen
import 'chat_screen.dart'; // Import your chat screen
import 'profile_screen.dart'; // Import your profile screen
import 'more_options.dart';
// Import your AI Doubt Solver screen if you have it

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Disable the back button
        title: Text('Pro Engineer'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu), // Use the menu icon
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoreOptionsScreen()),
                ); // Open drawer when menu icon is clicked
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Implement the action when "More options" is clicked
              // For example, show a dropdown menu or navigate to a settings page
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to the main app!\n\nHere you will see analysis of your term work!!'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Implement the action when the "AI Doubt Solver" button is clicked
              // For example, navigate to the AI Doubt Solver screen
            },
            child: Icon(Icons.lightbulb_outline), // Use a suitable icon for AI Doubt Solver
          ),
          SizedBox(height: 10),
          Text(
            'AI Support',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoursesScreen()),
                );
              },
              icon: Icon(Icons.school),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
