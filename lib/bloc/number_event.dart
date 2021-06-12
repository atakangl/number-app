part of 'number_bloc.dart';

abstract class NumberEvent extends Equatable {
  const NumberEvent();

  @override
  List<Object> get props => [];
}

class FetchNumberInfoEvent extends NumberEvent {
  final TextEditingController textEditingController;
  FetchNumberInfoEvent({required this.textEditingController});

  @override
  List<Object> get props => [textEditingController];
}

class FetchRandomNumberInfoEvent extends NumberEvent {
  final TextEditingController textEditingController;
  FetchRandomNumberInfoEvent({required this.textEditingController});

  @override
  List<Object> get props => [textEditingController];
}
