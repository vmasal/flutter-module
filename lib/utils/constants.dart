import 'package:add_to_app_flutter_module/main.dart';

// Hero list
final List<String> images = [
  'https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/273935/pexels-photo-273935.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1591373/pexels-photo-1591373.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/462024/pexels-photo-462024.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
];

// news feed user
final List<User> users = [
  User(
    "John Doe",
    "john_doe",
    "https://picsum.photos/id/1062/80/80",
  ),
  User(
    "Jane Doe",
    "jane_doe",
    "https://picsum.photos/id/1066/80/80",
  ),
  User(
    "Jack Doe",
    "jack_doe",
    "https://picsum.photos/id/1072/80/80",
  ),
  User(
    "Jill Doe",
    "jill_doe",
    "https://picsum.photos/id/133/80/80",
  )
];

// news feed list
final List<FeedItem> feedItems = [
  FeedItem(
    content:
        "A son asked his father (a programmer) why the sun rises in the east, and sets in the west. His response? It works, don’t touch!",
    user: users[0],
    imageUrl: "https://picsum.photos/id/1000/960/540",
    likesCount: 100,
    commentsCount: 10,
    retweetsCount: 1,
  ),
  FeedItem(
      user: users[1],
      imageUrl: "https://picsum.photos/id/1001/960/540",
      likesCount: 10,
      commentsCount: 2),
  FeedItem(
      user: users[0],
      content:
          "How many programmers does it take to change a light bulb? None, that’s a hardware problem.",
      likesCount: 50,
      commentsCount: 22,
      retweetsCount: 30),
  FeedItem(
      user: users[1],
      content:
          "Programming today is a race between software engineers striving to build bigger and better idiot-proof programs, and the Universe trying to produce bigger and better idiots. So far, the Universe is winning.",
      imageUrl: "https://picsum.photos/id/1002/960/540",
      likesCount: 500,
      commentsCount: 202,
      retweetsCount: 120),
  FeedItem(
    user: users[2],
    content: "Good morning!",
    imageUrl: "https://picsum.photos/id/1003/960/540",
  ),
  FeedItem(
    user: users[1],
    imageUrl: "https://picsum.photos/id/1004/960/540",
  ),
  FeedItem(
    user: users[3],
    imageUrl: "https://picsum.photos/id/1005/960/540",
  ),
  FeedItem(
    user: users[0],
    imageUrl: "https://picsum.photos/id/1006/960/540",
  ),
];
