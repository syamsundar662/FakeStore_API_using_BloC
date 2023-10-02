import 'dart:convert';
import 'package:fakestore/core/api/api.dart';
import 'package:fakestore/models/model.dart';
import 'package:http/http.dart' as http;


class Api {
  Future<List<FakeStore>> getall() async {
    final resp = await http.get(Uri.parse(api));
    if (resp.statusCode == 200) {
      final respData = jsonDecode(resp.body) as List;
      return respData.map((data) => FakeStore.fromJson(data)).toList();
    } else {
      throw Exception('Error'); 
    }
  }

  Future<void> postData() async {
    final response = await http.post(
      Uri.parse(api),
    );
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('Post Successfull (statusCode : ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> deleteData(int id) async {
    final response = await http.delete(Uri.parse('$api/$id'));
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('DELETE Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> putData({required FakeStore product}) async {
    final response = await http.put(Uri.parse(patchApi), body: {
      'title': 'test product',
      'price': 13.5.toString(),
      'description': 'lorem ipsum set',
      'image': 'https://i.pravatar.cc',
      'category': 'electronic'
    });
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('PUT Successful (statuscode : ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> patchData({required FakeStore product}) async {
    final response = await http.patch(Uri.parse(patchApi), body: {
      'title': 'test product',
      'price': 13.5.toString(),
      'description': 'lorem ipsum set',
      'image': 'https://i.pravatar.cc',
      'category': 'electronic'
    });
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('PATCH Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }
  Future<void> patchDatas({required FakeStore product}) async {
    final response = await http.patch(Uri.parse(patchApi), body: {
      'title': 'test product',
      'price': 13.5.toString(),
      'description': 'lorem ipsum set',
      'image': 'https://i.pravatar.cc',
      'category': 'electronic'
    });
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('PATCH Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }
  
}

class Api2 {
  Future<List<FakeStore>> getall() async {
    final resp = await http.get(Uri.parse(api));
    if (resp.statusCode == 200) {
      final respData = jsonDecode(resp.body) as List;
      return respData.map((data) => FakeStore.fromJson(data)).toList();
    } else {
      throw Exception('Error'); 
    }
  }

  Future<void> postData() async {
    final response = await http.post(
      Uri.parse(api),
    );
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('Post Successfull (statusCode : ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> deleteData(int id) async {
    final response = await http.delete(Uri.parse('$api/$id'));
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('DELETE Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> putData({required FakeStore product}) async {
    final response = await http.put(Uri.parse(patchApi), body: {
      'title': 'test product',
      'price': 13.5.toString(),
      'description': 'lorem ipsum set',
      'image': 'https://i.pravatar.cc',
      'category': 'electronic'
    });
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('PUT Successful (statuscode : ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }

  Future<void> patchData({required FakeStore product}) async {
    final response = await http.patch(Uri.parse(patchApi), body: {
      'title': 'test product',
      'price': 13.5.toString(),
      'description': 'lorem ipsum set',
      'image': 'https://i.pravatar.cc',
      'category': 'electronic'
    });
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('PATCH Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }
  Future<void> patchDatas({required FakeStore product}) async {
    final response = await http.patch(Uri.parse(patchApi), body: {
      'title': 'test product',
      'price': 13.5.toString(),
      'description': 'lorem ipsum set',
      'image': 'https://i.pravatar.cc',
      'category': 'electronic'
    });
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('PATCH Successful (statusCode: ${response.statusCode})');
    } else {
      throw Exception('Error');
    }
  }
}


