import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome, William')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Keep Moving Up',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 20),
            Text('Categories'),
            Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Category 1')),
                Chip(label: Text('Category 2')),
                Chip(label: Text('Category 3')),
              ],
            ),
            SizedBox(height: 20),
            Text('Top Courses'),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Course $index'),
                    subtitle: Text('Description of Course $index'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
