import 'package:starterflutter/common/core/domain/data_manager.dart';
import 'package:starterflutter/common/core/state/resource_state.dart';
import 'package:starterflutter/common/presentation/cubit/app_cubit.dart';

class HomeCubit extends AppCubit{
  HomeCubit(DataManager dataManager) : super(LoadingResource(), dataManager);
}