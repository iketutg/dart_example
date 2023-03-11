abstract class Product {
  void sayName();
}

class ProductA implements Product {
  @override
  void sayName() {
    print('Product A');
  }
}

class ProductB implements Product {
  @override
  void sayName() {
    print('Product B');
  }
}

class ProductFactory {
  static Product createProduct(String type) {
    switch (type) {
      case 'A':
        return ProductA();
      case 'B':
        return ProductB();
      default:
        throw ArgumentError('Invalid product type');
    }
  }
}
