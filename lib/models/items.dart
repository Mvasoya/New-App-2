class CatalogModel{
   static final items  = [
  Item(
  id: 1, 
  name: "iPhone 12 pro",    
  desc: "Good condition and 89% battery health",
  price: 45999, 
  color: "#33505a", 
  image:  "assets/images/12 pro.jpg")
];

  //static var items;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
}

