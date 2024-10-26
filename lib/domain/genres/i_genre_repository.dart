import 'package:dartz/dartz.dart';

import 'entities/genre.dart';
import 'genre_failures.dart';

abstract class IGenereFacade {
  Future<Either<GenreFailure, List<Genre>>> getGenres();
  Future<Either<GenreFailure, Unit>> saveSelectedGenres(
      {required String uid, required List<Genre> selectedGenres});
  Future<Either<GenreFailure, List<Genre>>> getSelectedGenres(
      {required String uid});
}
