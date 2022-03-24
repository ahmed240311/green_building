class Product {
  String title;
  int id;
  var risk;

  Product({
    required this.id,
    required this.risk,
    required this.title,

  });
  List<Product> products = [
    Product(
      id: 1,
      title: "مخاطرة مالية",
      risk:'79 %'
    ),

    // color: Color(0xFF3D82AE)),
    Product(
      id: 2,
      title: "التأخير في جدول المخاطر",
      risk: '80 %',
    ),
  ];
}