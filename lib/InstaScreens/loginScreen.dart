import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginScreenState();
  }
}

class LoginScreenState extends State {
  final TextEditingController _userId = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  var _textStyleBlack = new TextStyle(fontSize: 12, color: Colors.black);
  var _textstyleGrey = new TextStyle(fontSize: 12, color: Colors.grey);
  var _textstyblueGrey = new TextStyle(fontSize: 12, color: Colors.blueGrey);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(25),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(top: 25, bottom: 15),
            child: new Text(
              'Instagram',
              style: new TextStyle(fontFamily: 'Billabong', fontSize: 50),
            ),
          ),
          _userIDeditConainer(),
          _passwordEditContainer(),
          _loginContainer(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Forget your login datails',style: _textstyleGrey,),
              new FlatButton(onPressed: (){}, child: new Text('Get help siging in ',style: _textstyblueGrey,))
            ],

          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                color: Colors.grey,
                height: 1,
                width: MediaQuery.of(context).size.width/2.7,
              ),
              new Text('OR',style: new TextStyle(color: Colors.blueGrey),),
              new Container(
                color: Colors.grey,
                height: 1,
                width: MediaQuery.of(context).size.width/2.7,
              )
            ],

          ),
          _facebookContainer()


        ],
      ),
    );
  }

  Widget _userIDeditConainer() {
    return new Container(
      child: new TextField(
        controller: _userId,
        decoration: new InputDecoration(
            hintText: 'Phone number ,email or username',
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black)),
            isDense: true),
        style: _textStyleBlack,
      ),
    );
  }

  Widget _passwordEditContainer() {
    return new Container(
      margin: EdgeInsets.only(top: 5),
      child: new TextField(
        controller: _password,
        decoration: new InputDecoration(
            hintText: 'Password',
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black)),
            isDense: true),
        style: _textStyleBlack,
      ),
    );
  }

  Widget _loginContainer() {
    return new GestureDetector(
      onTap: _login,
      child: new Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        color: Colors.blue,
        width: 500,
        height: 40,
        child: new Text(
          'Log In',
          style: new TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  _facebookContainer() {
    return new GestureDetector(
      onTap: (){},
      child: new Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        color: Colors.blue,
        width: 500,
        height: 40,
        child: new Text(
          'Log in with facebook',
          style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );

  }

  void _login() {
    if(_userId.text.isEmpty){
      _showEmptyDialog("type somting UserID");
    }
    else if(_password.text.isEmpty){
      _showEmptyDialog("type somting Password");

    }else{
      Navigator.of(context).pushNamed('/HomeScreen');
    }
  }

  void _showEmptyDialog(String s) {
    showDialog(
      context: context,
      builder: (BuildContext context){
        return new CupertinoAlertDialog(
          content: new Text('${s} cant be empty'),
          actions: <Widget>[
            FlatButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: new Text('OK'))
          ],
        );
      }
    );
  }



}
