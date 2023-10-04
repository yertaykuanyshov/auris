import 'package:auris/blocs/states/listen_time_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/interface/listen_time_repository.dart';

class ListenTimeBloc extends Cubit<ListenTimeState> {
  ListenTimeBloc(this._listenTimeRepository) : super(Loading());

  final ListenTimeRepository _listenTimeRepository;

  void getListenTimes() async {
    final listenTimes = await _listenTimeRepository.getListenTimes(1);

    emit(Loaded(listenTimes));
  }

  void addListenTime() {
    _listenTimeRepository.add(secondCount: 100, languageId: 1);
  }

  void clear() {}
}
