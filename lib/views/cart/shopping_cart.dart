import 'package:fakestore/core/constants/constants.dart';
import 'package:fakestore/views/about/full_details.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(height: 10,);
          },
          itemCount: storeList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10) ,
      border: Border.all(width: .2)           ),
      
              child: Row(
                children: [
                  width10,
                  SizedBox(
                    width: 50,
                    child: Image.network(storeList[index].image)),
                  width10,
                  Text(storeList[index].title.substring(0,11),overflow:TextOverflow.ellipsis ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                  Spacer(), 
                  IconButton(onPressed: (){
                  }, icon: Icon(Icons.delete_outline))
                ],
              ));
          },
        ),
      ),
    );
  }
}