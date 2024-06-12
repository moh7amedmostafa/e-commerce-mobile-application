import 'package:dartz/dartz.dart';
import '../entities/GetCartResponseEntity.dart';
import '../entities/failures.dart';
import '../repository/repository/cart_repository_contract.dart';

class DeleteItemInCartUseCase{
  CartRepositoryContract repositoryContract ;
  DeleteItemInCartUseCase({required this.repositoryContract});

  Future<Either<Failures, GetCartResponseEntity>> invoke(String productId){
    return repositoryContract.deleteItemInCart(productId);
  }
}