import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: const Text(
          "Dulce Tolentino",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 22, 147, 231),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
              accountName: const Text("Candy Candy"),
              accountEmail: const Text("a.22308051281367@cbtis128.edu.mx"),
              currentAccountPicture: CircleAvatar(
                radius: 120,
                child: ClipOval(
                  child: Image.network(
                    'https://raw.githubusercontent.com/Dulce-Maria-Tolentino-De-Anda/imagenesact1/refs/heads/main/gato%20loco.jpg',
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blue),
              title: const Text("Home Page"),
              onTap: () {
                Navigator.popAndPushNamed(context, "/home");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.black),
              title: const Text("My Profile"),
              onTap: () {
                Navigator.popAndPushNamed(context, "/profile");
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket, color: Colors.red),
              title: const Text("News"),
              onTap: () {
                Navigator.pushNamed(context, "/news");
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help, color: Colors.green),
              title: const Text("About"),
              onTap: () {
                // Acción para About (puedes agregar una ruta si existe)
              },
            ),
            ListTile(
              leading: const Icon(Icons.power_settings_new, color: Colors.black),
              title: const Text("Log out"),
              onTap: () {
                // Acción para logout
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
