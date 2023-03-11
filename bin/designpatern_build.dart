class Person {
  final String firstName;
  final String lastName;
  final int age;

  Person._builder(PersonBuilder builder)
      : firstName = builder.firstName,
        lastName = builder.lastName,
        age = builder.age;
}

class PersonBuilder {
  String firstName;
  String lastName;
  int age;

  Person build() {
    return Person._builder(this);
  }
}
