//import 'package:equatable/equatable.dart';

part of 'remote_articles_bloc.dart';

@freezed
class RemoteArticlesEvent with _$RemoteArticlesEvent {
  const factory RemoteArticlesEvent.getArticles() = _GetArticlesEvent;
}



// abstract class RemoteArticlesEvent extends Equatable {
//   const RemoteArticlesEvent();

//   @override
//   List<Object> get props => [];
// }

// class GetArticles extends RemoteArticlesEvent {
//   const GetArticles();
// }
