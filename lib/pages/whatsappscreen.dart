import 'package:flutter/material.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldstate = GlobalKey<ScaffoldState>();
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          key: scaffoldstate,
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.message),
                child: Text("Chats"),
              ),
              Tab(
                icon: Icon(Icons.call),
                child: Text("Call"),
              ),
              Tab(
                icon: Icon(Icons.signal_wifi_4_bar),
                child: Text("Status"),
              ),
              Icon(Icons.camera_alt),
            ]),
            title: const Text("Whatsapp"),
            actions: [
              Container(width: 200, child: TextFormField()),
              const Icon(Icons.search),
              IconButton(
                  onPressed: () {
                    scaffoldstate.currentState!.openEndDrawer();
                    print("Menu");
                  },
                  icon: const Icon(Icons.menu))
            ],
          ),
          endDrawer: const Drawer(
            child: SafeArea(child: Text("Menu")),
          ),
          body: TabBarView(children: [
            /*    ChatScreen(),
            CallScreen(),
            StatusScreen(),
            CameraScreen(),*/
          ]),
        ));
  }
}
