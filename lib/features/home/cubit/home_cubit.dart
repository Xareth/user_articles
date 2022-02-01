import 'package:bloc/bloc.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/author_model.dart';
import 'package:user_articles/domain/repositories/authors_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._authorsRepository) : super(HomeState());

  final AuthorsRepository _authorsRepository;

  Future<void> start() async {
    emit(
      HomeState(
        status: Status.loading,
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    try {
      final results = await _authorsRepository.getAuthorModels();
      emit(
        HomeState(
          status: Status.success,
          results: results,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}