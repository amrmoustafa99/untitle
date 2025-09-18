import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled15/Manager/counter_cubit.dart';
import 'package:untitled15/Manager/counter_state.dart';

class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: Text("+"),
            ),
            SizedBox(width: 20),
            BlocConsumer<CounterCubit, CounterStates>(
              listener: (context, state) {
                if (state is CounterChaneValueState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.counter.toString())),
                  );
                }
              },
              builder: (context, state) {
                return BlocBuilder<CounterCubit, CounterStates>(
                  builder: (context, state) {
                    if (state is CounterInitState) {
                      return Text("$count");
                    } else if (state is CounterChaneValueState) {
                      return Text(state.counter.toString());
                    } else {
                      return Text("fail");
                    }
                  },
                );
              },
            ),
            SizedBox(width: 20),
            MaterialButton(
              color: Colors.blue,

              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: Text("-"),
            ),
          ],
        ),
      ),
    );
  }
}
