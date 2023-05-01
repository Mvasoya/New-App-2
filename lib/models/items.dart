class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
}

final products = [
  Item(
  id: "MV0081", 
  name: "iPhone 12 pro",
  desc: "Good condition and 89% battery health",
  price: 30999, 
  color: "#33505a", 
  image:  "assets/images/12 pro.jpg")
];
