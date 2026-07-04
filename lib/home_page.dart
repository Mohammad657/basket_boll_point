import 'package:basket_boll_point/cubit/counter_cubit.dart';
import 'package:basket_boll_point/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointCounter extends StatelessWidget {
  const PointCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(home: HomePage()),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Point Counter",
              textAlign: TextAlign.end,
            ),
            backgroundColor: Colors.orange,
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                          style: const TextStyle(fontSize: 140),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(team: 'A', buttonNumber: 1);
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(team: 'A', buttonNumber: 2);
                          },
                          child: const Text(
                            'add 2 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(team: 'A', buttonNumber: 3);
                          },
                          child: const Text(
                            'add 3 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 450,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamBPoint}",
                          style: const TextStyle(fontSize: 140),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(team: 'B', buttonNumber: 1);
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(team: 'B', buttonNumber: 2);
                          },
                          child: const Text(
                            'add 2 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(team: 'B', buttonNumber: 3);
                          },
                          child: const Text(
                            'add 3 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          minimumSize: const Size(140, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).resetPoint();
                      },
                      child: const Text(
                        'reset',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
