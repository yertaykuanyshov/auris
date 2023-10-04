abstract class ListenTimeRepository {
  Future<void> add({
    required int secondCount,
    required int languageId,
  });

  Future<Map<DateTime, int>> getListenTimes(int languageId);
}
