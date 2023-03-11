void main() {
  //Tipe data Map
  // map adalah objek koleksi yang setiap elemennya berupa pasangan key dan value
  //key itu harus uniq

  //Map<tipeKunci, tipeNilai> namaMap =  {kunci1:nilai1,kunci2:nilai2}

  Map<String, String> kota = {
    'jkt': 'Jakarta',
    'bdg': 'Bandung',
    'sby': 'Surabaya'
  };
  print(kota['jkt']); //Jakarta
  print(kota['bdg']); //Bandung
  print(kota['sby']); //Surabaya

  //membuat map kosong (tanpa elemen)
  Map<String, int> map1 = <String, int>{};

  Map<String, int> map2 = <String, int>{};

  //menambahkan
  map1['satu'] = 1;
  map1['dua'] = 2;
  map1['tiga'] = 3;
  map1['apel'] = 10;
  map1['anggur'] = 50;
  map1['durian'] = 20;

  //menambahkan kedalam element
  map1.forEach((key, value) {
    map2[key] = value;
  });

  print(map1);

  print(map2);

  //show length
  print('map1.length = ${map1.length}');
  //show key
  print('map1.keys = ${map1.keys}');

  //add many things
  map1.addAll({'saldo': 100, 'loan': 10});
  print(map1);

  //remove something
  map2.remove('dua');

  print(map2);

  //remove where
  map2.removeWhere((key, value) => key.startsWith('a'));

  print(map2);

  map2.removeWhere((key, value) => value == 3);

  //remove everywhere

  //membuat multitype value pada map

  // Membuat map dengan key string dan value dynamic
  Map<String, dynamic> data = {
    'name': 'John Doe',
    'age': 25,
    'isStudent': true,
    'grades': [80, 85, 90]
  };

  // Mengakses value dengan key
  print('Name: ${data['name']}'); // Output: Name: John Doe
  print('Age: ${data['age']}'); // Output: Age: 25
  print('Is student: ${data['isStudent']}'); // Output: Is student: true
  print('Grades: ${data['grades']}'); // Output: Grades: [80, 85, 90]

  // Mengubah value dengan key
  data['name'] = 'Jane Doe';
  data['age'] = 30;
  data['isStudent'] = false;
  data['grades'] = [90, 95, 100];

  // Mengakses value setelah diubah
  print('Name: ${data['name']}'); // Output: Name: Jane Doe
  print('Age: ${data['age']}'); // Output: Age: 30
  print('Is student: ${data['isStudent']}'); // Output: Is student: false
  print('Grades: ${data['grades']}'); // Output: Grades: [90, 95, 100]
}

/*----------------------------------------------------------------
Pada bahasa pemrograman Dart, "map" merujuk pada salah satu jenis struktur data yang digunakan untuk menyimpan data dalam bentuk pasangan kunci-nilai. Map dapat digunakan untuk memetakan satu set nilai ke nilai lainnya, dan memungkinkan pengaksesan data dengan cepat dan mudah menggunakan kunci yang sesuai.

Beberapa alasan mengapa "map" penting pada bahasa pemrograman Dart adalah:

Struktur Data yang Fleksibel: Map adalah struktur data yang sangat fleksibel dan dapat digunakan untuk menyimpan berbagai jenis data. Dengan "map", pengembang dapat mengatur dan mengakses data dengan mudah dan efisien.

Meningkatkan Kinerja: "Map" memungkinkan pengaksesan data dengan cepat dan efisien menggunakan kunci yang sesuai. Hal ini dapat meningkatkan kinerja program karena mengurangi waktu akses dan manipulasi data.

Mempermudah Pengolahan Data: Dengan "map", pengembang dapat dengan mudah memetakan satu set nilai ke nilai lainnya, melakukan transformasi data, atau melakukan operasi lainnya pada data.

Digunakan di Berbagai Bidang: "Map" digunakan secara luas di berbagai bidang, seperti pemrosesan data, pengembangan web, game, dan aplikasi mobile. Oleh karena itu, pemahaman yang baik tentang "map" sangat penting untuk menguasai bahasa pemrograman Dart secara efektif.

*/
