part of 'rs_data_model.dart';

@embedded
class RSDataImagesModel {
  String? fileName;
  String? url;
  String? key;
  DateTime? lastModified;
  double? sizeKB;

  RSDataImagesModel(
      {this.fileName, this.url, this.key, this.lastModified, this.sizeKB});

  RSDataImagesModel.fromJson(Map<String, dynamic>? json) {
    fileName = json?['file_name'];
    url = json?['url'];
    key = json?['key'];
    lastModified = DateTime.parse(json?['last_modified']);
    sizeKB = json?['size_KB'].toDouble();
  }
}
