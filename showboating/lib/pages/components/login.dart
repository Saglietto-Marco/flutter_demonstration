import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => new _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
	TextEditingController _controllerPassword;
	TextEditingController _controllerUsername;
	String password = '';
	String username = '';
	bool passwordHidden;

	@override
	void initState() {
		super.initState();
		_controllerPassword = TextEditingController();
		_controllerUsername = TextEditingController();
		passwordHidden = true;
	}

	@override
	void dispose() {
		_controllerPassword.dispose();
		_controllerUsername.dispose();
		super.dispose();
	}
	
	_submitForm(){
		setState(() {

		});
	}

	_passwordText(passwordValue){
		setState(() {
			password = passwordValue;
		});
	}

	_usernameText(usernameValue){
		setState(() {
			username = usernameValue;
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
							controller: _controllerUsername,
							onSubmitted: (String valueUsername) async{
								await _usernameText(valueUsername);
							},
							// textInputAction: TextInputAction.next,
							decoration: InputDecoration(
								labelText: 'Username',
							)
						),
					),

					Container(
						width: 280,
						child: TextField(
							controller: _controllerPassword,
							obscureText: passwordHidden,
							onSubmitted: (String valuePassword)async{
								await _passwordText(valuePassword);
							},
							decoration: InputDecoration(
								labelText: 'Password',
								suffixIcon: IconButton(
									onPressed: (){
										setState(() {
											passwordHidden = !passwordHidden;
										});
									},
          							icon: Icon(
										passwordHidden ? Icons.visibility_off : Icons.visibility
									),
								),
							),
						),
					),

					Container(
						height: 40,
						width: 290,
						child: RaisedButton(
							onPressed: _submitForm,
							child: Text(
								'Log In',
							),
							color: Colors.deepPurple,
						)
					),
					Container(
						height: 60,
						width: 290,
						child: OutlineButton(
							onPressed: _submitForm,
							child: Text(
								'Sign Up',
							),
							color: Colors.deepPurple[400],
						)
					),
					// Container(
					// 	height: 30,
					// 	width: 290,
					// 	child: Text(
					// 		'username "$username" '
					// 	)
					// ),
				],
			),
		);
	}
}