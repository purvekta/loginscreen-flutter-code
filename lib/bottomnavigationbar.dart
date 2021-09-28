import 'package:flutter/material.dart';
import 'package:share/share.dart';

class NavToNewPageBottomNavState extends State<NavToNewPageBottomNav> {
  String text = 'Home';

  _onTap(int index) {
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return new NewPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pukemy "),

      ),
      body: Container(
        child: Center(
          child: Text('this is demo',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                //color: ColorSwatch(primary, _swatch),
              )),
              
        ),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Goto Page"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            title: Text("Notification"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("Cart"),
          ),
        ],
        onTap: _onTap,
      ),
    );
  }
}
class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Page")),
      body: Center(
          child: Text("New Page",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold))),
    );
  }
}
class NavToNewPageBottomNav extends StatefulWidget {
  @override
  NavToNewPageBottomNavState createState() {
    return new NavToNewPageBottomNavState();
  }
}
