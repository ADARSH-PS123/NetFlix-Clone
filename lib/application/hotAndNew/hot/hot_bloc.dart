import 'package:bloc/bloc.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/hot&new/ihotRepo.dart';
import 'package:flix/domain/hot&new/models/hot/hot.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'hot_event.dart';
part 'hot_state.dart';
part 'hot_bloc.freezed.dart';

@injectable
class HotBloc extends Bloc<HotEvent, HotState> {
  IHotRepo iHotRepo;
  HotBloc(this.iHotRepo) : super(HotState.initialize()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await iHotRepo.getHotFiles();
      final data = response.fold((MainFailure failurs) {
        return const HotState(isLoading: false, isError: true, results: []);
      }, (Hot results) {
        return HotState(
            isLoading: false, isError: false, results: results.results);
      });

      emit(data);
    });
  }
}
