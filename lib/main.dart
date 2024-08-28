import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/extensions/context_extensions.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/feature/location/presentation/blocs/location_bloc/location_bloc.dart';
import 'package:movie_app/feature/home/presentation/blocs/movie_bloc/movie_bloc.dart';
import 'package:movie_app/feature/home/presentation/pages/movie_page.dart';
import 'package:movie_app/injector.dart';
import 'package:movie_app/shared/flash/presentation/blocs/cubit/flash_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  FlutterError.onError = (errorDetails) {
    if (!kDebugMode) {
      if (errorDetails.exception is SocketException) {
        return;
      }
    }
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    if (kDebugMode) {
      return false;
    }

    if (error is SocketException) {
      return false;
    }
    return true;
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MovieBloc>()
            ..add(
              const MovieEvent.getMovies(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<LocationBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FlashCubit>(),
        ),
      ],
      child: BlocListener<FlashCubit, FlashState>(
        listener: (context, state) {
          state.when(
            disappeared: () => null,
            appeared: (message) => context.showSnackbar(
              message: message,
            ),
          );
        },
        child: MaterialApp(
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          title: 'Movie App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const MoviePage(),
        ),
      ),
    );
  }
}
