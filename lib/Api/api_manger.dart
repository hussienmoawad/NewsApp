import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/Api/apiconstants.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/model/SourcesRespones.dart';

class ApiManger {
  static Future<SourcesRespones> getsources(String categoryId) async{
    Uri url = Uri.https(ApiConstans.baseUrl, ApiConstans.sourceApi, {
      'apiKey': '60d7575e7e594d5aad44ebed270eec4c',
      'category':categoryId
    });
      try {
    var respones =await http.get(url);
    var bodyString = respones.body;
    var json =jsonDecode(bodyString);
    return SourcesRespones.fromJson(json);
    }catch(e){
      throw e;
    }
  }
  static Future<NewsResponse> getNewsBysourceid(String sourceId, {int page = 1, int pageSize = 10}) async {
    Uri url = Uri.https(ApiConstans.baseUrl, ApiConstans.newsApi, {
      'apiKey': '60d7575e7e594d5aad44ebed270eec4c',
      'sources': sourceId,
      'page': page.toString(),
      'pageSize': pageSize.toString(),
    });

    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

}
