import 'package:bloc/bloc.dart';
import 'package:flix/domain/core/mainFailures.dart';

import 'package:flix/domain/hot&new/inewRepo.dart';

import 'package:flix/domain/hot&new/models/new/new.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_event.dart';
part 'new_state.dart';
part 'new_bloc.freezed.dart';

@injectable
class NewBloc extends Bloc<NewEvent, NewState> {
  INewRepo iNewRepo;
  NewBloc(this.iNewRepo) : super(NewState.initialize()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await iNewRepo.getNewFiles();
      final data = response.fold((MainFailure failurs) {
        return const NewState(isLoading: false, isError: true, results: []);
      }, (New results) {
        return NewState(
            isLoading: false, isError: false, results: results.results);
      });

      emit(data);
    });
  }
}
