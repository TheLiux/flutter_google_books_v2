import 'package:flutter_google_books_corsov2/core/domain/logger/logger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart' as l;

@Singleton(as: ILogger)
class Logger implements ILogger {
  final _logger = l.Logger();

  @override
  void debug(String log) {
    _logger.d(log);
  }

  @override
  void error(String log, {Object? e, StackTrace? s}) {
    _logger.e(
      log,
      error: e,
      stackTrace: s,
    );
  }

  @override
  void fatal(String log, {Object? e, StackTrace? s}) {
    _logger.f(
      log,
      error: e,
      stackTrace: s,
    );
  }

  @override
  void info(String log) {
    _logger.i(log);
  }

  @override
  void warning(String log) {
    _logger.w(log);
  }
}
