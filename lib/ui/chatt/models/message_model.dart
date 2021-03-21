part of '../../uis.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/raqhib.jpg',
);

// USERS
final User raqhib = User(
  id: 1,
  name: 'Raqhib',
  imageUrl: 'assets/images/raqhib.jpg',
);
final User adzka = User(
  id: 2,
  name: 'Adzka',
  imageUrl: 'assets/images/adzka.jpg',
);
final User dulziz = User(
  id: 3,
  name: 'Dulziz',
  imageUrl: 'assets/images/dulziz.jpg',
);
final User kiduk = User(
  id: 4,
  name: 'Kiduk',
  imageUrl: 'assets/images/kiduk.jpg',
);
final User mufid = User(
  id: 5,
  name: 'Mufid',
  imageUrl: 'assets/images/mufid.jpg',
);
final User aly = User(
  id: 6,
  name: 'Aly',
  imageUrl: 'assets/images/aly.jpg',
);
final User ariq = User(
  id: 7,
  name: 'Ariq',
  imageUrl: 'assets/images/ariq.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [mufid, ariq, kiduk, dulziz, raqhib];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: adzka,
    time: '5:30 PM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kiduk,
    time: '4:30 PM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: dulziz,
    time: '3:30 PM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: aly,
    time: '2:30 PM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ariq,
    time: '1:30 PM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: mufid,
    time: '12:30 PM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: raqhib,
    time: '11:30 AM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: adzka,
    time: '5:30 AM',
    text: 'No, Thank You',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:30 AM',
    text: 'Ok sir, anything else?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: adzka,
    time: '2:25 AM',
    text: 'I want My Phone color is black',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: adzka,
    time: '2:15 AM',
    text: 'I want to ask about product which I want to buy',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:02 AM',
    text: 'Yes? What can I do for you?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: adzka,
    time: '2:00 AM',
    text: 'Excuse Me Sir',
    isLiked: false,
    unread: true,
  ),
];
