import 'package:flutter/material.dart';
import 'package:quizapp/shared/bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('profiles this app...'),
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}