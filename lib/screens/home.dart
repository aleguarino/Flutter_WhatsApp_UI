import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call.dart';
import 'package:whatsapp_clone/screens/camera.dart';
import 'package:whatsapp_clone/screens/chat.dart';
import 'package:whatsapp_clone/screens/status.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      initialIndex: 1,
      length: 4,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Container(width: _size.width / 5, child: Tab(text: 'CHATS')),
            Container(width: _size.width / 5, child: Tab(text: 'STATUS')),
            Container(width: _size.width / 5, child: Tab(text: 'CALLS')),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 16),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
