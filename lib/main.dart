import 'package:flutter/material.dart';

/*
Hot loading only works when you tell flutter to use a stateful or stateless
widget. We do this within our widget by inheriting the stateful or stateless
class.
(1) We create the My App function and then call that from the main method
through runApp. By doing this we inherit from the StatelessWidget class which
will allow us to hot reload moving forward.

(2)The reason why is the stateless widget has access to the Widget.build method
which has the BuildContext passed into it.

Now when we add icons or buttons we can see in almost real time what it
looks like directly on the device. This works because no matter the size of
your application hot reload and hot restart only pushes the changes to the
application's UI
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
        backgroundColor: Colors.white,
        body: Container(),
      ),
    );
  }
}
