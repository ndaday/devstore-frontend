class GalleryModel {
  int? id;
  String? url;
  GalleryModel({
    this.id,
    required this.url,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }

  GalleryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }
}
