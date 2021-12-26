class ResourceState {}

class ResourceInitState extends ResourceState {}

class ResourceLoadingState extends ResourceState {}

class ResourceSucceedState extends ResourceState {
  final String uId;

  ResourceSucceedState(this.uId);
}

class ResourceErrorState extends ResourceState {
  final String error;

  ResourceErrorState(this.error);
}

class ResourceVisibilityState extends ResourceState {}
