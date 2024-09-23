import 'package:flutter/material.dart';
import 'package:flutter_basics_ui/widgets/snackbar.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Drawer Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.blue,
            child: const Column(
              children: [
                DrawerHeader(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.yY38gdTH6k-GXSE-lDuiaQHaEK?rs=1&pid=ImgDetMain'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.white),
                  title: Text('Folder', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.white),
                  title: Text('Folder', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.white),
                  title: Text('Folder', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.white),
                  title: Text('Folder', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.white),
                  title: Text('Folder', style: TextStyle(color: Colors.white)),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text('Logout', style: TextStyle(color: Colors.white)),
                ),
              ],
            )),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SnackBarWidget();
              }));
            },
            child: const Text('Navigate to Snackbar page')),
      ),
    );
  }
}
