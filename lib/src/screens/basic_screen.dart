import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  final headerStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subheaderStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildImage(),
            _buildRow(),
            _buildActionsRow(),
            _buildDescription(),
            _buildDescription(),
            _buildDescription(),
          ],
        ),
      ),
    );
  }

  Widget _buildRow() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago en un puente',
                    style: headerStyle,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Un lago en Alemania',
                    style: subheaderStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActionsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildAction(Icons.call, 'Call'),
        _buildAction(Icons.near_me, 'Route'),
        _buildAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _buildAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 15.0),
        )
      ],
    );
  }

  Widget _buildImage() {
    return Container(
      width: double.infinity,
      child: Image(
        height: 240,
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      ),
    );
  }

  Widget _buildDescription() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Ex nulla est quis nulla deserunt id deserunt proident. Veniam laboris velit minim velit. Irure ipsum est minim duis ex laborum fugiat tempor enim. Dolore magna aliquip excepteur nisi aliqua magna tempor nulla mollit qui. Ea dolor sit voluptate adipisicing consectetur commodo sunt mollit eiusmod. Ut eiusmod nostrud anim laboris Lorem eiusmod ullamco ullamco. Ullamco cillum minim enim aliquip quis.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
