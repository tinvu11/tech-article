// part of 'home_bloc.dart';

// abstract class HomeEvent extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class LoadTabCategoryContent extends HomeEvent {
//   final int page;
//   final int limit;
//   final String category;

//   LoadTabCategoryContent({
//     required this.page,
//     required this.limit,
//     required this.category,
//   });

//   @override
//   List<Object?> get props => [page, limit, category];
// }

// class LoadTabHomeContent extends HomeEvent {
//   final int page;
//   final int limit;

//   LoadTabHomeContent({required this.page, required this.limit});

//   @override
//   List<Object?> get props => [page, limit];
// }

// class LoadData extends HomeEvent {
//   final int page;
//   final int limit;
//   final String? category;

//   LoadData({required this.page, required this.limit, this.category});

//   @override
//   List<Object?> get props => [page, limit, category];
// }

// class RefreshHome extends HomeEvent {}

part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadTabCategoryContent({required int page, required int limit, required String category}) = _LoadTabCategoryContent;

  const factory HomeEvent.loadTabHomeContent({required int page, required int limit}) = _LoadTabHomeContent;

  const factory HomeEvent.loadData({required int page, required int limit, String? category}) = _LoadData;

  const factory HomeEvent.refreshHome() = _RefreshHome;
}
