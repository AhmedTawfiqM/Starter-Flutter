
import 'cubit_state.dart';

enum ResultState { success, error }

ResultState resultState(int value) {
  if (value == 0) return ResultState.error;
  return ResultState.success;
}

//TODO: encapsulate into ResourceState
 extension InsertStateMapper on ResultState {
  toState() {
    switch (this) {
      case ResultState.success:
        return SuccessResource();
      case ResultState.error:
        return ErrorResource();
    }
  }
}
