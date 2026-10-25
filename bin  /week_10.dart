abstract class Expressive {
  void shout();
}

mixin Encouraging {
  void cheerUp() {
    print("📣 Squad Leader: Keep going, team! We've got this!");
  }
}

class Gregg implements Expressive {
  String _color;

  Gregg(this._color);

  String get color => _color;

  @override
  void shout() {
    print("Gregg ($_color): Ready for action!");
  }
}

class GreenGregg extends Gregg {
  String preferredRole;

  GreenGregg(String color, this.preferredRole) : super(color);

  @override
  void shout() {
    print("Gregg ($color): I'll be the best $preferredRole!");
  }
}

class YellowGregg extends Gregg {
  String favoriteDrink;
  int rating;

  YellowGregg(String color, this.favoriteDrink, this.rating) : super(color);

  @override
  void shout() {
    print("Gregg ($color): I like $favoriteDrink, $rating/10 sha!");
  }
}

class RedGregg extends Gregg {
  RedGregg(String color) : super(color);

  @override
  void shout() {
    print("Gregg ($color): I will crush them all!");
  }
}

class SquadManager with Encouraging {
  String managerName;

  SquadManager(this.managerName);
}

void main() {
  final List<Gregg> squad = [
    GreenGregg("Green", "jungler"),
    YellowGregg("Yellow", "Java Chip", 10),
    RedGregg("Red"),
  ];

  for (final gregg in squad) {
    gregg.shout();
  }

  final manager = SquadManager("Coach Alex");
  manager.cheerUp();
}
