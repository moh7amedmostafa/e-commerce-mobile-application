import 'package:dartz/dartz.dart';
import '../entities/GetCartResponseEntity.dart';
import '../entities/failures.dart';
import '../repository/repository/cart_repository_contract.dart';

class GetCartUseCase{
  CartRepositoryContract repositoryContract ;
  GetCartUseCase({required this.repositoryContract});

  Future<Either<Failures, GetCartResponseEntity>>  invoke(){
    return repositoryContract.getCart();
  }
}