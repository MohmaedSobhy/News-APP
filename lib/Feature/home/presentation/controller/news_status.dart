abstract class NewsState {}

class InitialState extends NewsState {}

class FetchNewsLoading extends NewsState {}

class FetchNewsSucess extends NewsState {}

class FetchNewsFailed extends NewsState {}

class NewsUsingCategory extends NewsState {}
