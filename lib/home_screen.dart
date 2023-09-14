import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Call"),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text('New group'),
                      ),
                      const PopupMenuItem(
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            const Text("Camera"),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context , index){
                return const  ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg'),
                  ),
                  title: Text('Muneeb'),
                  subtitle: Text('Hi! What are you doing?'),
                  trailing: Text('3:51 PM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context , index){
                return  const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg'),
                  ),
                  title: Text('Sami shaka'),
                  subtitle: Text('Today, 12:12 pm'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context , index){
                return  ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg'),
                  ),
                  title: const Text('Munib'),
                  subtitle: const Text('Today, 12:12'),
                  trailing: Icon(index / 2 == 0 ? Icons.phone: Icons.video_call, color: Colors.teal),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
