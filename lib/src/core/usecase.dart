import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trackbudi_mobile/src/config/service/api/app_error.dart';

@factoryMethod
abstract class UseCase<Type, Params> {
  Future<Either<AppError, Type>> call(Params params);
}
