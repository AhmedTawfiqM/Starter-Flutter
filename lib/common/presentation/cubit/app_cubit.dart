import 'package:bloc/bloc.dart';
import 'package:starterflutter/common/core/domain/data_manager.dart';
import 'package:starterflutter/common/core/state/resource_state.dart';
import 'package:starterflutter/common/data/requester/app_requester.dart';
import 'package:starterflutter/common/data/requester/dart_requester.dart';

/*
  * Created by Ahmed Tawfik on 11/1/2022
 */
class AppCubit extends Cubit<ResourceState> {
  late final DataManager _dataManager;
  final AppRequestHandler appRequestHandler = AppRequestHandler();

  AppCubit(ResourceState initialState, this._dataManager) : super(initialState);
  late final AppRequester _appRequester = AppRequester();

  request(Function block, {RequestOptions? options}) async {
    options ??= RequestOptions();
    _appRequester.request(() {
      if (options!.showLoading) {
        emit(LoadingResource());
        //TODO: may need to show Loading here or in AppScreen(onUpdateState)
      }
      block();
    }, options: options);
  }
}
