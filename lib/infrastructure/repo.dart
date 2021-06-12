import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_numbers/data/numbers.dart';
import 'package:flutter_numbers/infrastructure/api_client.dart';
import 'package:flutter_numbers/injectable.dart';
import 'package:flutter_numbers/models/exception.dart';
import 'package:flutter_numbers/models/failure.dart';

class MyRepo {
  ApiClient apiClient = locator<ApiClient>();

  Future<Either<Failure, Numbers>> getMyDataOrFailure(
      String stringNumber) async {
    try {
      apiClient.checkNumber(stringNumber);
      Numbers numberInfo = await apiClient.getNumberInfo(stringNumber);
      apiClient.saveCache(numberInfo);
      return Right(numberInfo);
    } on SocketException {
      try {
        final cachedData = await apiClient.getNumberInfoFromCache();
        return Right(cachedData);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on FormatException {
      return Left(InvalidFailure());
    } on CacheException {
      return Left(CacheFailure());
    } on NullException {
      return Left(NullFailure());
    }
  }
}
