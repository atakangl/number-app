import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_numbers/data/numbers.dart';
import 'package:flutter_numbers/infrastructure/repo.dart';
import 'package:flutter_numbers/models/failure.dart';

part 'number_event.dart';
part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc(this._myRepo) : super(NumberInitial());
  final MyRepo _myRepo;
  @override
  Stream<NumberState> mapEventToState(NumberEvent event) async* {
    if (event is FetchNumberInfoEvent) {
      yield NumberLoadingState();

      Either<Failure, Numbers> myDataOrFailure =
          await _myRepo.getMyDataOrFailure(event.textEditingController.text);

      yield* myDataOrFailure.fold((l) async* {
        yield NumberErrorState(error: l.message);
      }, (r) async* {
        yield NumberLoadedState(myData: r);
      });
    } else if (event is FetchRandomNumberInfoEvent) {
      yield NumberLoadingState();

      Either<Failure, Numbers> getDefination =
          await _myRepo.getMyDataOrFailure("random");

      yield* getDefination.fold((l) async* {
        yield NumberErrorState(error: l.message);
      }, (r) async* {
        //! videoda her search yapıldığında TexFielddaki imleç başa kayıyordu,
        //! böylece sadece randomda kayacak
        event.textEditingController.text = r.number.toString();
        yield NumberLoadedState(myData: r);
      });
    }
  }
}
