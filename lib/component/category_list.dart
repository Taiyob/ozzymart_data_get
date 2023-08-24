import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../model/category_item.dart';

class CategoryShow extends StatelessWidget {
  final CategoryModel categoryModel;
  final Function(String) deleteById;
  const CategoryShow({Key? key, required this.categoryModel, required this.deleteById}) : super(key: key);
  final int num = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(categoryModel.brandLogo.toString()),
      ),
      title: Text(categoryModel.categoryName.toString()),
      subtitle: Text(categoryModel.brandName.toString()),
      trailing: PopupMenuButton(
        onSelected: (value){
          if(value == 'edit'){
            
          }else if(value == 'delete'){

          }
        },itemBuilder:(context){
          return[
            PopupMenuItem(child: Text('Edit'), value: 'edit',),
            PopupMenuItem(child: Text('Delete'), value: 'delete',),
          ];
      },
      ),
    );




    
    //   Container(
    //   child: Column(
    //     children: [
    //       CachedNetworkImage(
    //         height: 250,
    //         width: double.infinity,
    //         fit: BoxFit.fitHeight,
    //         imageUrl: categoryModel.brandLogo.toString(),
    //         placeholder: (context, url) => Center(child: CircularProgressIndicator()),
    //         errorWidget: (context, url, error) => Icon(Icons.error),
    //       ),
    //       SizedBox(height: 8,),
    //       Text(categoryModel.categoryName.toString()),
    //       SizedBox(height: 8,),
    //       Text(categoryModel.brandName.toString()),
    //     ],
    //   ),
    // );
  }
}
