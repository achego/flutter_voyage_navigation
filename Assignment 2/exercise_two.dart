class User {
  final int id;
  final String name;
  const User({required this.id, required this.name});

  static Map<int, String> mapUser(List<User> userList) {
    Map<int, String> userMap = {};
    for (var user in userList) {
      userMap[user.id] = user.name;
    }
    return userMap;
  }

  
}

List<User> userList = [
  User(
    id: 0,
    name: 'Charles',
  ),
  User(
    id: 1,
    name: "Paul",
  ),
  User(
    id: 2,
    name: 'Segun',
  ),
];

