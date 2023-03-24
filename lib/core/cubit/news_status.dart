abstract class NewsState {}

class InitialLoading extends NewsState {}

class LoadNewsSuccessfull extends NewsState {}

class FailedToGetNews extends NewsState {}

class NewsUsingCategory extends NewsState {}
