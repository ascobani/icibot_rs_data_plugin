
part of 'rs_data_model.dart';

@embedded
class RSDataTagsModel {
  int? id;
  int? hotelId;
  String? tableName;
  int? tableRecordId;
  int? menuSectionId;
  int? menuItemId;
  int? menuTagTemplateId;
  int? menuTagCategoryId;
  String? menuTagCategoryName;
  String? type;
  String? name;
  String? comment;
  String? colorCode;
  String? createdAt;
  int? createdBy;
  String? updatedAt;
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