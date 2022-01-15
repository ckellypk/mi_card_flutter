import 'package:flutter/material.dart';

/*
This branch I am adding the PAcifico font. To add a font its like adding an
image asset. Create a directory to hold the resource (at root called fonts in
this case.

We got this font from Google Fonts. Unzipped the ttf in the current fonts
location.

We then need to add the asset location to the pubspec.yaml file. It should look
like this:

flutter:
  fonts:
    - family: Pacifico
      fonts:
        - asset: fonts/Pacifico-Regular.ttf

 We can now access the font in our project.

 After the Circle Avatar is the Text for my name and title. Each has two
 separate assets that require import. Check out the ubspec.yaml to see the
 changes.

 The name and title use the widgets properties to update the UI. Notice how
 easy it is to update the color and shading of the lettering in the title widget

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
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/myHeadshot.jpg'),
              ),
              Text(
                'Chauncey Kelly',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize:40.0,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
              'SOFTWARE ENGINEER',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize:25.0,
                color: Colors.teal.shade100,
                letterSpacing: 2.8,
                fontWeight: FontWeight.bold
              ),
            ),
            ]
          ),
        ),
      ),
    );
  }

}


