import 'dart:async';
import 'package:flutter/material.dart';
import './components/login.dart';

class HomePage extends StatefulWidget {

	final String title = 'Flutter Demo Home Page';

	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	bool _first;
	Timer _timer;

	void _imageTransition(){
		_timer = Timer.periodic(Duration(seconds: 1), (timer){
			setState(() {
				_first = false;
				_timer.cancel;
			});
		});
	}

	@override
	void initState() {
		super.initState();
		_first = true;
		_imageTransition();
	}

	@override
	void dispose() {
		super.dispose();
	}

	@override
	Widget build(BuildContext context) {
		// This method is rerun every time setState is called, for instance as done
		// by the _incrementCounter method above.
		//
		// The Flutter framework has been optimized to make rerunning build methods
		// fast, so that you can just rebuild anything that needs updating rather
		// than having to individually change instances of widgets.
		return Scaffold(
			body: SingleChildScrollView(
				child: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.start,
						children: <Widget>[
							Container(
								margin: EdgeInsets.only(top: 50),
								child: AnimatedCrossFade(
									duration: Duration(seconds: 2),
									firstChild: Text(''),
									secondChild: Image(
										height: 250,
										image: AssetImage('lib/assets/images/pngguru.com.png'),
									),
									crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
								)
							),
							Container(
								margin: EdgeInsets.all(10),
								child: Text(
									'Welcome Showboaters',
									style: Theme.of(context).textTheme.display1,
									textAlign: TextAlign.center,
								)
							),
							Card(
								child: LoginCard(),
							)
						],
					),
				),
			),
		);
	}
}
