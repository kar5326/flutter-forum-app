import 'package:flutter/material.dart';
//import 'package:practice1/assets/FlutterLogo.png';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: new Text(
          "Flutter",
          textScaleFactor: 1.3,
        ),
      ),
      body: new Container(
        color: Colors.lightBlue,
        padding: const EdgeInsets.all(0),
        child: new Column(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.all(20.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
              ),
              height: 50.0,
              alignment: Alignment.center,
              child: new DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('FlutterLogo.png')
                  ))
              ),
            ),
            new TextField(
              controller: new TextEditingController(),
              decoration: new InputDecoration(
                hintText: 'Username',
                filled: true,
                fillColor: Colors.white70,
              ),
            ),
            new TextField(
              controller: new TextEditingController(),
              obscureText: true,
              decoration: new InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white70,
              ),
            ),
            new Container(
              // margin: const EdgeInsets.only( bottom: 150.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new RaisedButton(
                      child: new Text("Login"),
                      onPressed: onPressed,
                      color: Colors.blue[900],
                    ),
                  ),
                  new RaisedButton(
                    child: new Text("Forgot Password"),
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new RaisedButton(
                      child: new Text("Register"),
                      onPressed: onPressed,
                      color: Colors.yellow,
                    ),
                  ),
                  new RaisedButton(
                    child: new Text("Continue as Guest"),
                    onPressed: () {Navigator.pushNamed(context, '/forum');},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onPressed() {}

}
