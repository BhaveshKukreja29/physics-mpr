import 'package:flutter/material.dart';

class MoreOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Options'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Free Materials'),
              onTap: () {
                // Implement the action when the "Free Materials" tile is tapped
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Downloads'),
              onTap: () {
                // Implement the action when the "Downloads" tile is tapped
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.connect_without_contact),
              title: Text('Connect With Us'),
              onTap: () {
                // Implement the action when the "Connect With Us" tile is tapped
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.support),
              title: Text('Support'),
              onTap: () {
                // Implement the action when the "Support" tile is tapped
              },
            ),
          ],
        ),
      ),
    );
  }
}
