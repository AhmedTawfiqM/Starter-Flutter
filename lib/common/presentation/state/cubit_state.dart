abstract class ResourceState {}

class InitResource extends ResourceState {}

class LoadingResource extends ResourceState {}

class ResultResource<T> extends ResourceState {
  late T result;

  ResultResource({required this.result});
}

class SuccessResource extends ResourceState {}

class ErrorResource extends ResourceState {
  String? error = "";
  late Exception exception; //TODO:

  ErrorResource({this.error}) {
    //TODO: show error
  }
}

