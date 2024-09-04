import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/repositories/fibonacci_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  late final FibonacciRepository _repository;

  HomeCubit(FibonacciRepository fibonacciRepository)
      : super(const HomeState()) {
    _repository = fibonacciRepository;
    emit(HomeState(
        counter: 0, fibonacciNumber: _repository.calculateFibonacci(0)));
  }

  void incrementCounter() {
    final int count = state.counter + 1;

    final fibonacciNumber = _repository.calculateFibonacci(count);

    emit(HomeState(counter: count, fibonacciNumber: fibonacciNumber));
  }
}
