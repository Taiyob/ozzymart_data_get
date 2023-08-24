class CategoryModel {
  String? id;
  bool? isActive;
  String? brandName;
  String? brandLogo;
  String? shortCode;
  String? categoryId;
  String? parentCategoryId;
  Category? category;
  String? categoryName;
  int? productCount;
  int? brandModelCount;
  List<String>? brandModels;

  CategoryModel(
      {this.id,
        this.isActive,
        this.brandName,
        this.brandLogo,
        this.shortCode,
        this.categoryId,
        this.parentCategoryId,
        this.category,
        this.categoryName,
        this.productCount,
        this.brandModelCount,
        this.brandModels});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isActive = json['isActive'];
    brandName = json['brandName'];
    brandLogo = json['brandLogo'];
    shortCode = json['shortCode'];
    categoryId = json['categoryId'];
    parentCategoryId = json['parentCategoryId'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    categoryName = json['categoryName'];
    productCount = json['productCount'];
    brandModelCount = json['brandModelCount'];
    brandModels = json['brandModels'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['isActive'] = this.isActive;
    data['brandName'] = this.brandName;
    data['brandLogo'] = this.brandLogo;
    data['shortCode'] = this.shortCode;
    data['categoryId'] = this.categoryId;
    data['parentCategoryId'] = this.parentCategoryId;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['categoryName'] = this.categoryName;
    data['productCount'] = this.productCount;
    data['brandModelCount'] = this.brandModelCount;
    data['brandModels'] = this.brandModels;
    return data;
  }
}

class Category {
  String? id;
  String? title;
  String? icon;
  String? parentCategoryId;
  bool? isActive;
  String? description;
  String? categoryTypeId;
  Null? categoryTypeName;
  List<String>? categoryVariations;
  Null? chaildCategories;

  Category(
      {this.id,
        this.title,
        this.icon,
        this.parentCategoryId,
        this.isActive,
        this.description,
        this.categoryTypeId,
        this.categoryTypeName,
        this.categoryVariations,
        this.chaildCategories});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
    parentCategoryId = json['parentCategoryId'];
    isActive = json['isActive'];
    description = json['description'];
    categoryTypeId = json['categoryTypeId'];
    categoryTypeName = json['categoryTypeName'];
    categoryVariations = json['categoryVariations'].cast<String>();
    chaildCategories = json['chaildCategories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['parentCategoryId'] = this.parentCategoryId;
    data['isActive'] = this.isActive;
    data['description'] = this.description;
    data['categoryTypeId'] = this.categoryTypeId;
    data['categoryTypeName'] = this.categoryTypeName;
    data['categoryVariations'] = this.categoryVariations;
    data['chaildCategories'] = this.chaildCategories;
    return data;
  }
}
