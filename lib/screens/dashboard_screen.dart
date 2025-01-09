import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Message
            Text(
              "Welcome William",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            // Placeholder Image
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Icon(
                  Icons.image,
                  size: 100,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: 24),

            // Categories Section
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            // Categories Chips
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(label: Text("Development")),
                Chip(label: Text("IT & Software")),
                Chip(label: Text("UI/UX")),
                Chip(label: Text("Business")),
                Chip(label: Text("Music")),
              ],
            ),
            SizedBox(height: 24),

            // Top Courses Section
            Text(
              "Top Courses",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            // Navigate to Messages
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/messages');
              },
              child: Text("Go to Messages"),
            ),
          ],
        ),
      ),
    );
  }
}