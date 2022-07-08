part of 'details_bloc.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();
  @override
  List<Object> get props => [];
}

class DetailsInitial extends DetailsState {}
class DetailsLoading extends DetailsState {}
class DetailsLoaded extends DetailsState {
  const DetailsLoaded();
}
class DetailsError extends DetailsState {
  final String message;
  const DetailsError(this.message);
}


