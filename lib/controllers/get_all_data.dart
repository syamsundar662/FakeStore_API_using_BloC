import 'dart:convert';
import 'dart:developer';
import 'package:fakestore/core/api/api.dart';
import 'package:fakestore/models/model.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<FakeStore>> getall() async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body) as List;
      return responseData.map((data) => FakeStore.fromJson(data)).toList();
    } else {
      throw Exception('Error');
    }
  }

  Future<void> postData() async {
    final response = await http.post(Uri.parse(api), );
    if (response.statusCode == 200) {
      log('Post Successfull (statusCode : ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> deleteData(int id) async {
    final response = await http.delete(Uri.parse('$api/$id'));
    if (response.statusCode == 200) {
      log('DELETE Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> putData(int id)async{
    final response = await http.post(Uri.parse(api));
    if(response.statusCode ==200){
      log('PUT Successful (statuscode : ${response.statusCode})');
    }else{
    throw Exception('Error');
    }
  }

  Future<void> patchData(int id) async {
    final response = await http.patch(Uri.parse('$api/$id'));
    if (response.statusCode == 200) {
      log('PATCH Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }
}

// import 'dart:convert';
// import 'package:fakestore/core/api/api.dart';
// import 'package:fakestore/models/model.dart';
// import 'package:http/http.dart' as http;

// class Api {
//   Future<List<FakeStore>> getall() async {
//     final response = await http.get(Uri.parse(api));
//     if (response.statusCode == 200) {
//       final responseData = jsonDecode(response.body) as List;
//       return responseData.map((data) => FakeStore.fromJson(data)).toList();
//     } else {
//       throw Exception('Error');
//     }
//   }

//   Future<void> postData() async {
//     final response = await http.post(Uri.parse(api), );
//     if (response.statusCode == 200) {
//       // ignore: avoid_print
//       print('Post Successfull (statusCode : ${response.statusCode})');
//     } else {
//       throw Exception('Error');
//     }
//   }

//   Future<void> deleteData(int id) async {
//     final response = await http.delete(Uri.parse('$api/$id'));
//      print('$api/$id');
//     if (response.statusCode == 200) {
//       // ignore: avoid_print
//       print('DELETE Successful (statusCode: ${response.statusCode})');
//     } else {
//       throw Exception('Error');
//     }
//   }

//   Future<void> putData({required FakeStore product})async{
//     final response = await http.put(Uri.parse(api),body:{'title':product.title,'descripition':product.description} );
//      print('$api/$product.id');
//     if(response.statusCode ==200){
//       // ignore: avoid_print
//       print('PUT Successful (statuscode : ${response.statusCode})');
//     }else{
//     throw Exception('Error');
//     }
//   }

//   Future<void> patchData({required FakeStore product}) async {
//     final response = await http.patch(Uri.parse('$api${product.id}'),
//      ); 
//        print('$api/$product.id');
//     if (response.statusCode == 200) {
//       // ignore: avoid_print
//       print('PATCH Successful (statusCode: ${response.statusCode})');
//     } else {
//       throw Exception('Error');
//     }
//   }
// }


