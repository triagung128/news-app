import 'package:flutter/material.dart';

import '../common/navigation.dart';
import '../common/styles.dart';
import '../data/model/article.dart';
import '../ui/article_detail_page.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        leading: Hero(
          tag: article.urlToImage!,
          child: Image.network(
            article.urlToImage!,
            width: 100,
          ),
        ),
        title: Text(article.title),
        subtitle: Text(article.author ?? ''),
        onTap: () => Navigation.intentWithData(
          ArticleDetailPage.routeName,
          article,
        ),
      ),
    );
  }
}
