// class ProductsModel {
//   String? fname;
//   String? lname;
//   String? email;
//   String? address;
//   String? phone1;
//   String? phone2;
//
//   ProductsModel(
//       {this.image,
//         this.name,
//         this.price,
//         this.rate,
//         this.inStock,
//         this.key});
//
//   factory ProductsModel.fromSnapshot(Map<dynamic, dynamic> snapshot) {
//     return ProductsModel(
//       image: snapshot['image'],
//       name: snapshot['name'],
//       price: snapshot['price'],
//       rate: snapshot['rate'],
//       inStock: snapshot['inStock'],
//     );
//   }
//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map['image'] = image;
//     map['name'] = name;
//     map['price'] = price;
//     map['rate'] = rate;
//     map['inStock'] = inStock;
//     return map;
//   }
// }
