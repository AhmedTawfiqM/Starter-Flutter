import 'package:starterflutter/common/core/state/resource_state.dart';

/*
  * Created by Ahmed Tawfik on 11/1/2022
*/
abstract class ScreenState{
  content();
  onInitState();
  onUpdateState(ResourceState state) {}
}