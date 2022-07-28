class GalleryModel {
  int? id;
  String? image;
  GalleryModel({
    this.id,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
    };
  }

  GalleryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}
