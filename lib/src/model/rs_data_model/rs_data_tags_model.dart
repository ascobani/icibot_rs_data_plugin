part of 'rs_data_model.dart';

@embedded
class RSDataTagsModel {
  int? id;

  /// Hotel
  int? hotelId;

  /// Hangi tabloya ait
  String? tableName;

  /// Hangi ID
  int? tableRecordId;

  /// Restoranlar, Spa gibi bilgi amaçlı
  int? menuSectionId;

  /// Direk restoran için bilgi amaçlı.
  int? menuItemId;

  /// Hangi Tag Şablonu
  int? menuTagTemplateId;

  /// Etiket Kategorisi MenuTagTemplate'den gelecek
  int? menuTagCategoryId;

  /// Special Attention, Dietary Restriction, Etiketleri categorilere ayırmak için kullanacağız. MenuTagTemplate'den gelecek
  String? menuTagCategoryName;

  // örneğin ben ve misafirim için bir request gönderdiğimde kendimin tagları ile misafir-lerimin taglarini bu alanda ayracağız.
  String? type;

  /// Fish, Pork, Kosher gibi etiket isimlerini girecekler. MenuTagTemplate'den gelecek
  String? name;

  /// Yorum. MenuTagTemplate'den gelecek
  String? comment;

  /// Renk Kodu MenuTagCategory tablosundaki color bu alana akacak. Cascade update çalışmalı MenuTagTemplate'den gelecek
  String? colorCode;

  /// Oluşturma Tarihi
  String? createdAt;

  /// Oluşturan Kişi
  int? createdBy;

  /// Değiştirme Tarihi
  String? updatedAt;

  /// Değiştiren Kişi
  int? updatedBy;

  RSDataTagsModel(
      {this.id,
      this.hotelId,
      this.tableName,
      this.tableRecordId,
      this.menuSectionId,
      this.menuItemId,
      this.menuTagTemplateId,
      this.menuTagCategoryId,
      this.menuTagCategoryName,
      this.type,
      this.name,
      this.comment,
      this.colorCode,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy});

  RSDataTagsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hotelId = json['hotel_id'];
    tableName = json['table_name'];
    tableRecordId = json['table_record_id'];
    menuSectionId = json['menu_section_id'];
    menuItemId = json['menu_item_id'];
    menuTagTemplateId = json['menu_tag_template_id'];
    menuTagCategoryId = json['menu_tag_category_id'];
    menuTagCategoryName = json['menu_tag_category_name'];
    type = json['type'];
    name = json['name'];
    comment = json['comment'];
    colorCode = json['color_code'];
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }
}
