import 'package:flutter/material.dart';
import 'package:newsapp/Api/api_manger.dart';
import 'package:newsapp/Home/my_theme.dart';
import 'package:newsapp/News/NewsItem.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/model/SourcesRespones.dart';


class SearchUser extends SearchDelegate  {
  Source userList = Source();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context)  {

    return Scaffold();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search User'),
    );
  }

}