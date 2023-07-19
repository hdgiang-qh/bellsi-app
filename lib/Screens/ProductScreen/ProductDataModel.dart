class ProductDataModel {
  int? id;
  int? sum;
  String? name;
  String? subname;
  String? category;
  String? imageURL;
  String? oldPrice;
  String? price;
  String? brand;

  ProductDataModel(
      {this.id,
      this.sum,
      this.name,
      this.subname,
      this.category,
      this.imageURL,
      this.oldPrice,
      this.price,
      this.brand});

  ProductDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sum = json['sum'];
    name = json['name'];
    subname = json['subname'];
    category = json['category'];
    imageURL = json['imageUrl'];
    oldPrice = json['oldPrice'];
    price = json['price'];
    brand = json['brand'];
  }
}
