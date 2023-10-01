import 'package:auris/blocs/states/listen_time_state.dart';
import 'package:auris/repositories/impl/listen_time_repository.dart';
import 'package:auris/services/database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListenTimeBloc extends Cubit<ListenTimeState> {
  ListenTimeBloc(this._listenTimeRepository) : super(Loading());

  final ListenTimeRepository _listenTimeRepository;

  void getListenTimes() async {
    final listenTimes = await _listenTimeRepository.getListenTimes();

    emit(Loaded(listenTimes));
  }

  void addListenTime(ListenHistoryData listenHistoryData) {}

  void clear() {}
}
