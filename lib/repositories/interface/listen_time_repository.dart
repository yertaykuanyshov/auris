abstract class ListenTimeRepository {
  Future<void> add({
    required int secondCount,
    required int languageId,
    DateTime? date,
  });

  Future<Map<DateTime, int>> getListenTimes(int languageId);
}
