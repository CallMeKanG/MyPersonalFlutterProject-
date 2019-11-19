abstract class FlurryEvent {
  String get eventName;
  Map<String, String> get parameters;
}

class UserLogIn extends FlurryEvent {
  String name;
  UserLogIn(this.name);

  @override
  String get eventName => "UserLogIn";

  @override
  Map<String, String> get parameters => ({"name": name});
}
