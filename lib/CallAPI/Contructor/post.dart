class Post {
  int? id;
  String? name;
  String? image;
  String? description;
  int? price;
  int? categoryId;

  Post(
      {this.id,
      this.name,
      this.image,
      this.description,
      this.price,
      this.categoryId});

  factory Post.fromJson(Map<String, dynamic> json) {
   return Post(
     id: json['id'] as int?,
    name:json['name'] as String?,
    image:  json['image'] as String?,
    description:  json['description'] as String?,
    price: json['price'] as int?,
    categoryId:json['categoryId'] as int?
   );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price'] = this.price;
    data['categoryId'] = this.categoryId;
    return data;
    
  }
}
