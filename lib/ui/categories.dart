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
  bool isLoading = true;
  List items = [];
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
      body: Visibility(
        //visible: isLoading,
        child: FutureBuilder(
            future: apiService.getCategory(), builder: (context, snapshot){
          if(snapshot.hasData){

            List<CategoryModel> articleList = snapshot.data ?? [];

            return ListView.builder(itemBuilder: (context,index){
              //print('index is $index');
              final item = items[index] as Map;
              final id = item['id'] as String;
               return CategoryShow(
                 categoryModel: articleList[index], deleteById: deleteById, item: item,);
            },
            itemCount: articleList.length,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
  Future<void> deleteById(String id) async {
     final isSuccess = await ApiService.deleteById(id);
     if(isSuccess){
       final filtered = items.where((element) => element['id'] != id).toString();
       setState(() {
         items = filtered as List;
       });
     }else{
       showErrorMessage(context, message:'Delation Failed');
     }
  }



  void showErrorMessage(BuildContext context,{required String message,}){
    final snackBar = SnackBar(
      content: Text(
        message,style: TextStyle(
          color: Colors.white
      ),),backgroundColor: Colors.red,);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
