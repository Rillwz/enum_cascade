// Enum & Cascade

void main(List<String> arguments) {
  var m = MonsterUcoa(status: UcoaStatus.poisoned);
  print('Hello World');

  // cascade notations

  m
    ..move()
    ..eat();
}

enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final UcoaStatus status;

  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print('Ucoa is moving');
        break;
      case UcoaStatus.poisoned:
        print('Ucoa cannot move. Ucoa is dying');
        break;
      case UcoaStatus.confused:
        print('Ucoa is spinning');
        break;
      default:
        print('Ucoa is spinning. Dart langguage is confusing');
    }
  }

  void eat() {
    print('Ucoa is eating Mie');
  }
}
