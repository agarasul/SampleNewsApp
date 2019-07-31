class News {
  String status;
  String error;
  int totalResults;
  List<Article> articles;

  News({this.status, this.articles});

  News.fromJson(Map<String, dynamic> newsJson)
      : status = newsJson['status'],
        articles = List.from(newsJson['articles'])
            .map((article) => Article.fromJson(article))
            .toList(),
        totalResults = newsJson['totalResults'],
        error = newsJson['error'];
}

class Article {
  Source source;
  String author;
  String title;
  String description;
  String urlToImage;
  String url;
  String publishedAt;
  String content;

  Article.fromJson(Map<String, dynamic> articleJson)
      : source = Source.fromJson(articleJson['source']),
        author = articleJson['author'],
        title = articleJson['title'],
        description = articleJson['description'],
        urlToImage = articleJson['urlToImage'],
        url = articleJson['url'],
        publishedAt = articleJson['publishedAt'],
        content = articleJson['content'];
}

class Source {
  String id;
  String name;

  Source.fromJson(Map<String, dynamic> sourceJson)
      : id = sourceJson['id'],
        name = sourceJson['name'];
}
