import 'package:flutter/material.dart';
import 'home_widget.dart';
import 'shopping_list.dart';
import 'family_schedule.dart';
import 'package:dcdg/dcdg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        routes: {
          ShoppingList.routeName: (context) => ShoppingList(),
          FinancialOverview.routeName: (context) => FinancialOverview(),
          FamilySchedule.routeName: (context) => FamilySchedule()
        });
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Shopping List"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ShoppingList.routeName,
                );
              },
            ),
            RaisedButton(
              child: Text("Financial Overview"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  FinancialOverview.routeName,
                );
              },
            ),
            RaisedButton(
              child: Text("Family Schedule"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  FamilySchedule.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
