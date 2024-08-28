// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movie_app/core/di/app_module.dart' as _i15;
import 'package:movie_app/core/di/storage_module.dart' as _i16;
import 'package:movie_app/core/utils/interceptor/dio_error_interceptor.dart'
    as _i7;
import 'package:movie_app/core/utils/interceptor/dio_http_interceptor.dart'
    as _i8;
import 'package:movie_app/feature/home/data/datasources/remote/movie_remote_data_source.dart'
    as _i9;
import 'package:movie_app/feature/home/data/repositories/movie_repository_impl.dart'
    as _i11;
import 'package:movie_app/feature/home/domain/repositories/movie_repository.dart'
    as _i10;
import 'package:movie_app/feature/home/domain/usecases/get_character_usecase.dart'
    as _i12;
import 'package:movie_app/feature/home/domain/usecases/get_movies_usecase.dart'
    as _i13;
import 'package:movie_app/feature/home/presentation/blocs/movie_bloc/movie_bloc.dart'
    as _i14;
import 'package:movie_app/feature/location/presentation/blocs/location_bloc/location_bloc.dart'
    as _i4;
import 'package:movie_app/shared/flash/presentation/blocs/cubit/flash_cubit.dart'
    as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final storageModule = _$StorageModule();
    gh.factory<_i3.FlashCubit>(() => _i3.FlashCubit());
    gh.factory<_i4.LocationBloc>(() => _i4.LocationBloc());
    gh.singleton<_i5.Dio>(() => appModule.dio);
    await gh.lazySingletonAsync<_i6.SharedPreferences>(
      () => storageModule.sharedPreference,
      preResolve: true,
    );
    gh.lazySingleton<_i7.DioErrorInterceptor>(() => _i7.DioErrorInterceptor());
    gh.lazySingleton<_i8.DioHttpInterceptor>(() => _i8.DioHttpInterceptor());
    gh.lazySingleton<_i9.MovieRemoteDataSource>(
        () => _i9.MovieRemoteDataSourceImpl(gh<_i5.Dio>()));
    gh.lazySingleton<_i10.MovieRepository>(() => _i11.MovieRepositoryImpl(
        remoteDataSource: gh<_i9.MovieRemoteDataSource>()));
    gh.lazySingleton<_i12.GetCharacterUsecase>(
        () => _i12.GetCharacterUsecase(gh<_i10.MovieRepository>()));
    gh.lazySingleton<_i13.GetMoviesUsecase>(
        () => _i13.GetMoviesUsecase(gh<_i10.MovieRepository>()));
    gh.factory<_i14.MovieBloc>(() => _i14.MovieBloc(
          gh<_i13.GetMoviesUsecase>(),
          gh<_i12.GetCharacterUsecase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i15.AppModule {}

class _$StorageModule extends _i16.StorageModule {}
