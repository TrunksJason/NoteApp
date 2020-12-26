import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dang Nhap"),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        TextFormField(
          decoration:InputDecoration(
            icon: Icon(Icons.email),
            hintText: "Example@mail.com",
            labelText: "Email *"),
          ),
        SizedBox(
          height: 20,),
        TextFormField(
          decoration:InputDecoration(
            icon: Icon(Icons.lock),
            labelText: "Password *"),
          ),
        SizedBox(
          height: 45,
        ),  
        SizedBox(
          width: 200,
          height: 45,
          child: RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
            onPressed: (){},
            child: Text(
              "Dang Nhap",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            ),
          ),
      ],)
    );
  }
}
