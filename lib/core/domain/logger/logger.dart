abstract class ILogger {
  void debug(String log);

  void info(String log);

  void warning(String log);

  void error(
    String log, {
    Object? e,
    StackTrace? s,
  });

  void fatal(
    String log, {
    Object? e,
    StackTrace? s,
  });
}
