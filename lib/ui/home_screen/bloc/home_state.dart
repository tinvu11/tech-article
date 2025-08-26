part of 'home_bloc.dart';

// abstract class HomeState extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class TabContentInitial extends HomeState {}

// class TabContentLoading extends HomeState {}

// class TabContentLoaded extends HomeState {
//   final List<String> categories;
//   final Map<String, HomeDataEntity> meta;
//   final Map<String, bool> hasReachedMax;

//   TabContentLoaded({required this.meta, required this.categories, required this.hasReachedMax});

//   @override
//   List<Object> get props => [meta, categories, hasReachedMax];
//   TabContentLoaded copyWith({Map<String, HomeDataEntity>? meta, List<String>? categories, Map<String, bool>? hasReachedMax}) {
//     return TabContentLoaded(meta: meta ?? this.meta, categories: categories ?? this.categories, hasReachedMax: hasReachedMax ?? this.hasReachedMax);
//   }
// }

// class TabContentError extends HomeState {
//   final String message;

//   TabContentError({required this.message});

//   @override
//   List<Object> get props => [message];
// }

@freezed
class HomeState with _$HomeState {
  const factory HomeState.tabContentInitial() = _TabContentInitial;

  const factory HomeState.tabContentLoading() = _TabContentLoading;

  const factory HomeState.tabContentLoaded({required List<String> categories, required Map<String, HomeDataEntity> meta, required Map<String, bool> hasReachedMax}) =
      _TabContentLoaded;

  const factory HomeState.tabContentError({required String message}) = _TabContentError;
}
