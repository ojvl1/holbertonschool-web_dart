void outer(String name, String id) {
  String inner() {
    List<String> parts = name.split(" ");
    String firstInitial = parts[0][0];
    String lastName = parts[1];

    return "Hello Agent $lastName.$firstInitial your id is $id";
  }
  print(inner());
}