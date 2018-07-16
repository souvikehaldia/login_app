import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.indigo
      ),
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this,
      duration: new Duration(milliseconds: 300)
    );
    _iconAnimation = new CurvedAnimation(parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();

  }





   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
              image: new AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,

          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(image: new AssetImage("images/hit_white.png"),width: _iconAnimation.value*1000,),
              new Form(child: Theme(
                data: new ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.teal,
                  inputDecorationTheme: new InputDecorationTheme(labelStyle: new TextStyle(color: Colors.teal,fontSize: 20.0))
                ),
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new TextFormField(
                        decoration:new InputDecoration(
                          labelText: "Enter Email", labelStyle: new TextStyle(fontSize: 20.0),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration:new InputDecoration(
                            labelText: "Enter Password" ,labelStyle: new  TextStyle(fontSize: 20.0)
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      new Padding(
                          padding: const EdgeInsets.only(top: 40.0)
                      ),
                      new MaterialButton(
                        height: 30.0,
                          minWidth: 100.0,
                          onPressed: () => {},
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Icon(Icons.forward),
                        splashColor: Colors.lightBlue,
                      ),
                    ],
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
