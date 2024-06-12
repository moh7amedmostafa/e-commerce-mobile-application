import 'package:dartz/dartz.dart';
import '../../entities/GetCartResponseEntity.dart';
import '../../entities/failures.dart';

abstract class CartRemoteDataSource {
  Future<Either<Failures, GetCartResponseEntity>> getCart();

  Future<Either<Failures, GetCartResponseEntity>> updateCountInCart(
      String productId,int count);

  Future<Either<Failures, GetCartResponseEntity>> deleteItemInCart(
      String productId);
}
