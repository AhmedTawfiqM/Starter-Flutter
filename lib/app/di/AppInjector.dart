import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:starterflutter/common/core/domain/data_manager.dart';
import 'package:starterflutter/screens/home/home_cubit.dart';

final getIt = GetIt.instance;

class AppInjector {
  late DataManager dm = DataManager();

  inject() {
    getIt.registerLazySingleton(() => dm);
    //TODO: do stuff here
  }

  blocs() {

    //TODO: do stuff here
    return [BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(dm),
    )
    ];
  }

  providers() {
    //TODO: do stuff here
    return [];
  }
}
