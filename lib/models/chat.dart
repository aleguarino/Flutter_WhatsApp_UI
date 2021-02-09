import 'package:meta/meta.dart';

class ChatM {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatM({
    @required this.name,
    @required this.message,
    @required this.time,
    @required this.avatarUrl,
  });
}

List<ChatM> mockData = [
  ChatM(
    name: 'June Cha',
    message: 'are you there?',
    time: '22:28',
    avatarUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
  ),
  ChatM(
    name: 'Christopher Martin',
    message: 'you are late',
    time: '18:03',
    avatarUrl: 'https://randomuser.me/api/portraits/men/12.jpg',
  ),
  ChatM(
    name: 'Leo Gill',
    message: 'Hey, whatsup',
    time: '15:30',
    avatarUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
  ),
  ChatM(
    name: 'Laura Rasmussen',
    message: 'see you later',
    time: '11:23',
    avatarUrl: 'https://randomuser.me/api/portraits/women/9.jpg',
  ),
];
