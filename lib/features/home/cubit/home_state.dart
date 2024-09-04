part of 'home_cubit.dart';

class HomeState extends Equatable {
  final int counter;
  final int fibonacciNumber;

  const HomeState({this.counter = 0, this.fibonacciNumber = 0});

  @override
  List<Object> get props => [counter, fibonacciNumber];
}
