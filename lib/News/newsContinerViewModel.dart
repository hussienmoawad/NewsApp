import 'package:flutter/cupertino.dart';
import 'package:newsapp/Api/api_manger.dart';
import 'package:newsapp/model/NewsResponse.dart';
int page=0;
class newsContinerModelView extends ChangeNotifier{
  List<News>?listNews;
  String ?erorrMessage;
  void getNewsById(String sourceId)async{
    try {
      listNews=null;
      erorrMessage=null;
      notifyListeners();
      var respons = await ApiManger.getNewsBysourceid(sourceId: sourceId);
      if(respons.status=='erorr'){
        erorrMessage=respons.message;
      }else{
        listNews=respons.articles;
      }
    }catch(e){
    erorrMessage='Erorr';
    }
    notifyListeners();
  }
}