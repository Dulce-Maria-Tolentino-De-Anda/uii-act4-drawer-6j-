import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        elevation: 0.2,
        title: Text("Dulce Tolentino", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 22, 147, 231),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
              accountName: Text("Candy Candy"),
              accountEmail: Text("a.22308051281367@cbtis128.edu.mx"),

              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                radius: 120,
            child: ClipOval(
              child: Image.network(
                'https://raw.githubusercontent.com/Dulce-Maria-Tolentino-De-Anda/imagenesact1/refs/heads/main/gato%20loco.jpg',
              ),
            ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.blue,),
              ),
            )
          ],
        ),
      ),
    );
  }
}