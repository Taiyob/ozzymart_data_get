import 'dart:convert';
import 'package:http/http.dart';
import '../model/category_item.dart';


class ApiService{
  final category_url = "https://api.ozzymart.com.au/api/brands";
  final brand_url = "https://api.ozzymart.com.au/api/categories";

  Future<List<CategoryModel>> getCategory()async{
    try{
      Response response = await get(Uri.parse(category_url));
      if(response.statusCode == 200){
        Map<String, dynamic> json = jsonDecode(response.body);
        List<dynamic>body = json['data'];
        List<CategoryModel> articleList = body.map((item) => CategoryModel.fromJson(item)).toList();
        return  articleList ;
      }else{
        throw ('No news found');
      }
    }catch(e){
      throw e;
    }
  }
  //Future<List<>>
}
