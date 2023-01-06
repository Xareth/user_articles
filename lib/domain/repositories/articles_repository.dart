import 'package:user_articles/data/remote_data_sources/articles_remote_data_source.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class ArticlesRepository {
  ArticlesRepository({required this.remoteDataSource});

  final ArticlesRemoteRetrofitDataSource remoteDataSource;

  Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
    final allArticles = await remoteDataSource.getArticles();

    return allArticles
        .where((element) => element.authorId == authorId)
        .toList();
  }
}

// class ArticlesRepository {
//   ArticlesRepository({required this.remoteDataSource});

//   final ArticlesRemoteDioDataSource remoteDataSource;

//   Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
//     final json = await remoteDataSource.getArticles();
//     if (json == null) {
//       return [];
//     }
// final allArticles =
//     json.map((item) => ArticleModel.fromJson(item)).toList();

// return allArticles
//     .where((element) => element.authorId == authorId)
//     .toList();
//   }
// }
