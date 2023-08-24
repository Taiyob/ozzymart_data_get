import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ozzymart_data_get/model/category_item.dart';
import 'package:ozzymart_data_get/service/api_service.dart';
import '../component/category_list.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  ApiService apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: apiService.getCategory(), builder: (context, snapshot){
        if(snapshot.hasData){
          List<CategoryModel> articleList = snapshot.data ?? [];
          return ListView.builder(itemBuilder: (context,index){
             return CategoryShow(categoryModel: articleList[index], deleteById: deleteById);
          },
          itemCount: articleList.length,
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
  Future<void> deleteById(String id) async {
    
  }
}
