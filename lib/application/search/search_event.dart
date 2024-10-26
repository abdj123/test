part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _Started;

  const factory SearchEvent.search(
      {required int limit,
      required int skip,
      required String searchTerm}) = _Search;
}
