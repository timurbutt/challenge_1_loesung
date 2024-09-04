import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/home/cubit/home_cubit.dart';
import 'package:myapp/features/home/view/home_view.dart';
import 'package:myapp/repositories/fibonacci_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(FibonacciRepository()),
      child: const HomeView()
    );
  }
}