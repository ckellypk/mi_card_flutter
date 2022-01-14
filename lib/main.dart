import 'package:flutter/material.dart';

/*
Layout widgets are responsible for that (you guessed it ) layout of the
 UI. Documentation can be found here:

 https://docs.flutter.dev/development/ui/widgets/layout

There are different types of layout widgets that give you the visual effect
you are looking for. We will use the container widget.

Containers when empty and not constrained try to be as big as possible like in
the starting code for this branch. But containers with children try to contain
themselves to their children's size, meaning that it will grow and shrink based
on what you pur in it.

If we just add the container with the text 'Hello' inside it would shrink to the
size of the text. It also moves to the top left of the screen (default position
of contents inside the Scaffold body). If we want to contain our UI away from
stuff around the edges of the phone we need to put the container inside of a
'SafeArea' widget. This will ensure that the text will be in a readable area.

We can add additional properties to the container holding the text to take on a
specific height and width disregarding the auto-fitting to the content.

We can also update the margins using pixels OR EdgeInsets which automatically
ensures the container stays a specific distance away from the edges.
Setting the margins is not straight forward. If you want to set the margin on
all sides you use EdgeInsets.all but if you just want the top and bottom use
EdgeInsets.symmetrical ( vertical: value, horizontal: value). You can also do
the traditional fromLRTB which will allow you to set all 4 sides. If you only
want to set one side do the .only property on the edgeInsets


You can also adjust the contents of the container by adjusting the padding
using EdgeInsets.

REMEMBER Padding is for the inside (contents) margin is for the outside

The container widget is helpful but remember that it con only hold a single
child if used correctly. If you want to add multiple children to a container
then use go to the next branch in this project.

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
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}
