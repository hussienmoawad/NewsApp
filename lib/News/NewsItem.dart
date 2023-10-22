import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Home/my_theme.dart';
import 'package:newsapp/model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: CachedNetworkImage(
              imageUrl: news.urlToImage??'',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(height: 10,),
          Text(news.author??'',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14,color: MyTheme.gray),
          ),
          Text(news.title??'',
          style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 5,),
          Text(news.publishedAt??'',textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14,color: MyTheme.gray),
          ),
        ],
      ),
    );
  }
}
