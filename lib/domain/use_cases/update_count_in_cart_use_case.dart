import 'package:dartz/dartz.dart';
import '../entities/GetCartResponseEntity.dart';
import '../entities/failures.dart';
import '../repository/repository/cart_repository_contract.dart';

class UpdateCountInCartUseCase{
  CartRepositoryContract repositoryContract ;
  UpdateCountInCartUseCase({required this.repositoryContract});

  Future<Either<Failures, GetCartResponseEntity>> invoke(
      String productId,int count){
    return repositoryContract.updateCountInCart(productId,count);
  }
}