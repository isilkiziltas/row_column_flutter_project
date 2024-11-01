import 'package:flutter/material.dart';

void main() => runApp(row_column_flutter_project());

class row_column_flutter_project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi-Kod"),
          backgroundColor: Colors.orange,
          actions: [
            Icon(Icons.accessibility),
            SizedBox(width: 8),
            Icon(Icons.add),
            SizedBox(width: 16),
          ],
        ),
        backgroundColor: Colors.grey[400],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildColorBox(Colors.blueGrey),
                  _buildColorBox(Colors.white),
                  _buildColorBox(Colors.red),
                  _buildColorBox(Colors.black),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildColorBox(Colors.blueGrey),
                  _buildColorBox(Colors.white),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildColorBox(Colors.blueGrey),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorBox(Color color) {
    return Container(
      width: 60,
      height: 120,
      color: color,
    );
  }
}
