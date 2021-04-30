import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFFD740);
const kPrimaryLightColor = Color(0xFFFFF3E0);

const kBottomContainerHeight = 80.0;
const kActiveCardColour = Color(0xFF8D8E98);
const kInactiveCardColour = Color(0xFF111328);
//const kBottomContainerColour = Color(0xFFEB1555);
const kBottomContainerColour = Color(0xFFFFD740);

const kLabelTextStyle = TextStyle(
  fontSize: 16.0,
  color: Color(0xFF111328),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,

);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);


///////////////  another style below


const kSendButtonTextStyle = TextStyle(
  color: Colors.green,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.green, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 2.5),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
