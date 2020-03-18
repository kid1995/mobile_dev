import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

class FamilySchedule extends StatefulWidget {
  static const routeName = '/family-schedule';

  @override
  State<StatefulWidget> createState() {
    return _FamilyScheduleState();
  }
}

class _FamilyScheduleState extends State<FamilySchedule> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Plan'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('TODO-List'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
