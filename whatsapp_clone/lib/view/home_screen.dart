import 'package:flutter/material.dart';

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
                  child: Icon(Icons.camera_alt),
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
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.message, color: Colors.white),
      ),
    );
  }
}
