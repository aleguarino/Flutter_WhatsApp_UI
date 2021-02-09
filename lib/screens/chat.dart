import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: mockData.length,
        separatorBuilder: (_, index) => Divider(),
        itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(mockData[index].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    mockData[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    mockData[index].time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  mockData[index].message,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ));
  }
}
