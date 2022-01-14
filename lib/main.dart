import 'package:flutter/material.dart';

/*
Layout widgets are responsible for that (you guessed it ) layout of the
 UI. Documentation can be found here:

 https://docs.flutter.dev/development/ui/widgets/layout

This time we will explore multi-child layout widgets, specifically columns

A Column unlike a container has children and not child property values to
reflect the nature of its contents. In our safe area we want to add this column
and all of its children. The children are held in a list of type Widget

The column automatically will stack each container vertically in order from top
to bottom beginning in the upper most right of its parent container. You can
change the default by changing the properties of the column container.

To see all the properties you can change and how you can change them go to the
column class docs here:
https://api.flutter.dev/flutter/widgets/Column-class.html

Just about every css layout property (including flexbox) are included and
accessed as properties.

If you wat to stretch the contents to fill the entire width of the container use
'CrossAxisAlignment.stretch'.

To add spacing you can add a sized box in between your containsers to space
between elements

If you want from left to right you need to change the Column widget to a row
widget and the contents of the container stack next to each other left to right

All of the properties applied to the Column can be used for row components,
but a few things will need to change. Like since we are stretching the
CrossAccessAlignment we are stretching from the top to the bottom for a row, so
the height property no longer maters, and vice versa for columns and setting
the width

If you Run MyApp2 You can see how the ui updates to handle the change in
layout to incorporate a column within a row. Remember to set the height or width
of a container or else it will try to take up the entire screen! You will have
to hot restart to view changes to MyApp and MyApp2.
 */

void main() {
  runApp( MyApp() );
}

//1
class MyApp extends StatelessWidget {

  //2
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

class MyApp2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Container(
                width: 100.0,
                color: Colors.red,
              ),
              Container(
                color: Colors.teal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget> [
                   Container(
                     width: 100,
                     height: 100,
                     color: Colors.yellow,
                   ),
                   Container(
                       width: 100,
                       height: 100,
                       color: Colors.green,
                   ),
                 ],
                ),
              ),
              Container(
                  width: 100,
                  color: Colors.blue
              ),
            ]
          ),
        ),
      ),
    );
  }
}

