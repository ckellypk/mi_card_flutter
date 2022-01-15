import 'package:flutter/material.dart';

/*
Now we need to add a row with an icon and our phone number. We create a
container to hold our row and then create a row widget that will list each
child from left to right.

The fist element in our row is the phone icon. Adding Icons using the material
UI is extremely easy. You ALWAYS should use Icons and not turn images into an
icon because its way better for  vectoring when resizing.

Annnyway to look at all the icons go here:
https://www.materialpalette.com/icons

And then in the Icon widget Select the Icon you want from the enum list.
Its that simple. We then want to add our actual phone number next to the picture
but we don't want to add additional paddings or margins to the existing
phone widget. We want to decouple this from thewidget completely by adding in a
spacer widget called a SizedBox.

Using a sized box to create whitespace is best as it decouples the creation of
the whitespace from the padding and margins of the individual widgets. That and
its the way Flutter suggest you do it so just do it this way.

After the sized box we include the text of the row which is our phone number.
We  set the style properties as needed

We basically repeat this process for the email changing the icon and text.

We could make a few more suttle changes to enhance the UI or we can place the
current code inside of a Card class widget instead of a container widget.

To make the change we literally just swap the containers out for the card widget
then comment out (or remove ) the padding as it is not allowed in cards, but
other than that you are good to go.

Because we need the padding in our card widget but no padding property is
available within the card itself we need to wrap our row inside of a padding
widget and pass in our row as a child property. This gives is the desired effect

But what if I told you there was a better way? If you look at the flutter card
docs here: https://api.flutter.dev/flutter/material/Card-class.html it says at
the bottom See also: ListTitle to display icons and text in a card, which is
exactly what we are trying to do.

Lets replace the both rows with the ListTitle widget to see how it works (
the row implementation is commented out at the bottom)

This is alot cleaner and you understand exactly whats going on. The text is
automatically centered within the title area of the list title. You can also add
a trailing item if you want.

I addded a background image and notes from how to spread
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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('images/updatedBG.jpg'),
                fit: BoxFit.cover,
                ),
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 53,
                  backgroundColor: Colors.black87,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/myHeadshot.jpg'),
                  ),
                ),

                Text(
                  'Chauncey Kelly',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize:40.0,
                    color: Colors.black,
                  ),
                ),

                Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize:25.0,
                  color: Colors.black,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 80.0,
                  width: 150.0,
                  child: Divider (
                    color: Colors.black,
                  )
                ),
                Card(
                  color: Colors.blueGrey,
                  margin: const EdgeInsets.symmetric(vertical: 10.0,
                                                     horizontal: 25.0
                  ),
                  child:
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),

                      title: Text(
                        '+1 (213)-610-2658',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                        ),
                      ),

                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  color:Colors.blueGrey,

                  margin: const EdgeInsets.symmetric(vertical: 10.0,
                                                     horizontal: 25.0
                  ),
                  child:
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color:Colors.black,
                    ),
                    title: Text(
                      'ckelly@commure.com',
                      style:TextStyle(
                        color: Colors.black,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      )
                    )
                  )
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

}


/*
* Phone and Email Card with Row widget implementation instead of listTile
*  Card(
    color: Colors.white,
    //padding: EdgeInsets.all(10.0),
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.perm_phone_msg,
            color: Colors.teal,
          ),
          SizedBox(
              width: 10
          ),
          Text(
            '213-610-2658',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontFamily: 'SourceSansPro',
              fontSize: 20.0,
              letterSpacing: 2.0,
            ),
          )
        ],
      ),
    ),
  ),
* Card(
    color:Colors.white,
    //padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget> [
          Icon(
            Icons.mail_outline_rounded,
            color: Colors.teal,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'ckelly@commure.com',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontFamily: 'SourceSansPro',
              fontSize: 20.0,
              //letterSpacing: 5.0,
            ),
          )
        ]
      ),
    )
  )
* */

