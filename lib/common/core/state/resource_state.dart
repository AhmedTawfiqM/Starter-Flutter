abstract class ResourceState {}

class InitResource extends ResourceState {}

class LoadingResource extends ResourceState {}

class ResultResource<T> extends ResourceState {
  late T result;

  ResultResource(this.result);
}

class ErrorResource extends ResourceState {
  String error;

  ErrorResource(this.error);
}

class SuccessResource extends ResourceState {}

class FailedResource extends ResourceState {}
