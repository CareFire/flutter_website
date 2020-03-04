class ProductItemModal{
  String desc;
  String type;
  String name;
  String imageUrl;
  String point;
  ProductItemModal({
    this.desc,
    this.type,
    this.name,
    this.imageUrl,
    this.point
  });

  factory ProductItemModal.fromJson(dynamic json){
    return ProductItemModal(
      desc:json['desc'],
      type:json['type'],
      name:json['name'],
      imageUrl:json['imageUrl'],
      point:json['point'],
    );
  }

}

class ProductListModal{
  List<ProductItemModal>data;
  ProductListModal(this.data);

  factory ProductListModal.fromJson(List json){
    return ProductListModal(
      json.map((i)=>ProductItemModal.fromJson((i))).toList()
    );
  }
}