abstract class NewsState {}

class InitialState extends NewsState {}

class InitialLoading extends NewsState {}

class LoadNewsSuccessfull extends NewsState {}

class FailedToGetNews extends NewsState {}

class NewsUsingCategory extends NewsState {}
