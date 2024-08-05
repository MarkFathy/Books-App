import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/Features/home/data/repos/home_repo_implementation.dart';
import 'package:books/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Register HomeRepoImplementation as HomeRepo
  getIt.registerSingleton<HomeRepoImplementation>(
      HomeRepoImplementation(getIt.get<ApiService>()));
}

class AuthRepo {
  final ApiService apiService;
  AuthRepo(this.apiService);
}
