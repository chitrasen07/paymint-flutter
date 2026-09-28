import 'package:paymint/core/errors/app_exception.dart';

sealed class Failure {
  const Failure(this.message);

  final String message;
}

final class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network request failed.']);
}

final class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Local data could not be read.']);
}

final class ServerFailure extends Failure {
  const ServerFailure([super.message = 'The server returned an error.']);
}

final class UnexpectedFailure extends Failure {
  const UnexpectedFailure([
    super.message = 'Something went wrong. Please try again.',
  ]);
}

abstract final class FailureMapper {
  static Failure from(Object error) {
    return switch (error) {
      NetworkException(:final message) => NetworkFailure(message),
      CacheException(:final message) => CacheFailure(message),
      ServerException(:final message) => ServerFailure(message),
      AppException(:final message) => UnexpectedFailure(message),
      _ => const UnexpectedFailure(),
    };
  }
}
