part of 'number_bloc.dart';

abstract class NumberState extends Equatable {
  const NumberState();

  @override
  List<Object> get props => [];
}

class NumberInitial extends NumberState {}

class NumberLoadingState extends NumberState {}

class NumberLoadedState extends NumberState {
  final Numbers myData;

  NumberLoadedState({
    required this.myData,
  });
  @override
  List<Object> get props => [
        myData,
      ];
}

class NumberErrorState extends NumberState {
  final String error;
  NumberErrorState({required this.error});
  @override
  List<Object> get props => [error];
}
