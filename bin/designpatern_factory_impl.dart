enum AnimalType {
  cat,
  dog,
  bird,
}

abstract class Animal {
  void makeSound();
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

class Bird implements Animal {
  @override
  void makeSound() {
    print('Tweet!');
  }
}

class AnimalFactory {
  static Animal createAnimal(AnimalType type) {
    switch (type) {
      case AnimalType.cat:
        return Cat();
      case AnimalType.dog:
        return Dog();
      case AnimalType.bird:
        return Bird();
      default:
        throw Exception('Invalid animal type.');
    }
  }
}

void main() {
  final cat = AnimalFactory.createAnimal(AnimalType.cat);
  final dog = AnimalFactory.createAnimal(AnimalType.dog);
  final bird = AnimalFactory.createAnimal(AnimalType.bird);

  cat.makeSound(); // Meow!
  dog.makeSound(); // Woof!
  bird.makeSound(); // Tweet!
}

/*
Pada contoh di atas, kita menggunakan Factory Pattern untuk membuat instance dari kelas Animal. Kelas Animal adalah kelas abstrak yang memiliki metode makeSound.

Kita membuat tiga kelas konkret yang mengimplementasikan kelas Animal, yaitu Cat, Dog, dan Bird. Setiap kelas konkret memiliki implementasi yang berbeda untuk metode makeSound.

Kita juga membuat kelas AnimalFactory yang memiliki metode createAnimal. Metode ini digunakan untuk membuat instance dari kelas Animal berdasarkan jenis hewan yang diinginkan. Kita menggunakan switch statement untuk menentukan kelas konkret mana yang harus dibuat.

Pada main function, kita menggunakan AnimalFactory untuk membuat instance dari Animal. Setiap instance kemudian dipanggil metode makeSound-nya.

Dengan menggunakan Factory Pattern, kita dapat membuat instance dari kelas-kelas konkret tanpa perlu tahu detail implementasi dari setiap kelas konkret. Kita hanya perlu mengetahui jenis objek yang ingin dibuat, dan Factory Pattern akan menentukan kelas konkret mana yang harus dibuat berdasarkan jenis objek tersebut.
*/