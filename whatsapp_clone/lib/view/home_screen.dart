import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/calls_view.dart';
import 'package:whatsapp_clone/view/chatlist_view.dart';
import 'package:whatsapp_clone/view/status_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 1:
              fabIcon = Icons.chat;
              break;
            case 2:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 3:
              fabIcon = Icons.message;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "WhatsApp",
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          PopupMenuButton(
            enabled: true,
            icon: const Icon(Icons.more_vert_outlined),
            itemBuilder: (context) => [
              const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text("New broadcast")),
              const PopupMenuItem(child: Text("Linked devices")),
              const PopupMenuItem(child: Text("Starred messages")),
              const PopupMenuItem(child: Text("Payments")),
              const PopupMenuItem(child: Text("Settings")),
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(200.0, 60.0),
          child: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            controller: tabController,
            tabs: const [
              SizedBox(
                width: 200.0,
                child: Tab(
                  child: Icon(
                    Icons.groups,
                    size: 32,
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                child: Tab(
                  child: Text("CHATS"),
                ),
              ),
              SizedBox(
                width: 200.0,
                child: Tab(
                  child: Text("STATUS"),
                ),
              ),
              SizedBox(
                width: 200.0,
                child: Tab(
                  child: Text("CALLS"),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Icon(Icons.camera_alt_outlined),
          ChatListView(),
          StatusView(),
          CallsView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.message, color: Colors.white),
      ),
    );
  }
}
