import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:insta_cart/src/data/models/product_model.dart';

import '../../../data/repository/api_repository.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(const DetailsLoaded()) {
    on<DetailsEvent>((event, emit) {
      on<DetailsEvent>((event, emit) async{
        try{
         // emit(DetailsLoading());
          emit(const DetailsLoaded());
        }on NetworkError{
          emit(const DetailsError("Failed to fetch data. is your device online?"));
        }
      });
    });
  }
}
