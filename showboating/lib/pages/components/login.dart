import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => new _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {

	@override
	void initState() {
		super.initState();
	}

	@override
	void dispose() {
		super.dispose();
	}
	
	_submitForm(){
		setState(() {
			// This call to setState tells the Flutter framework that something has
			// changed in this State, which causes it to rerun the build method below
			// so that the display can reflect the updated values. If we changed
			// _counter without calling setState(), then the build method would not be
			// called again, and so nothing would appear to happen.
		});
	}

	@override
	Widget build(BuildContext context) {
		return Container(
			height: 280,
			width: 300,
			child: Column(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				children: <Widget>[

					Container(
						width: 280,
						child: TextField(
							decoration: InputDecoration(
								labelText: 'Username',
							)
						),
					),

					Container(
						width: 280,
						child: TextField(
							decoration: InputDecoration(
								labelText: 'Password'
							)
						),
					),

					Container(
						height: 40,
						width: 290,
						child: FlatButton(
							onPressed: _submitForm,
							child: Text(
								'Log In',
							),
						)
					),
					Container(
						height: 60,
						width: 290,
						child: FlatButton(
							onPressed: _submitForm,
							child: Text(
								'Sign Up',
							),
						)
					),
				],
			),
		);
	}
}