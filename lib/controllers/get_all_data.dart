import 'dart:convert';
import 'package:fakestore/core/api/api.dart';
import 'package:fakestore/models/model.dart';
import 'package:http/http.dart' as http;

class GetAllData{
  Future<List<FakeStore>> getall()async{
    final response =await http.get(Uri.parse(api));
    if(response.statusCode == 200){
      final responseData = jsonDecode(response.body) as List;
      return responseData.map((data)=> FakeStore.fromJson(data)).toList();
    }else{
      throw Exception('Error');
    }
  }
}
class Post{
  Future<void> postData()async{
    final response =await http.post(Uri.parse(api),body: []);
    if(response.statusCode == 200){ 
      print('Post Successfull (statusCode : ${response.statusCode})');
      
    }else{
      throw Exception('Error');
    }
  }
}