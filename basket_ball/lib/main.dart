// import 'package:flutter/foundation.dart';
import 'package:basket_ball/cubits/counter_cubit.dart';
import 'package:basket_ball/cubits/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({super.key});
  int teamAScore = 0;
  int teamBScore = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAScore =BlocProvider.of<CounterCubit>(context).teamAScore;
        }
        else {
          teamBScore = BlocProvider.of<CounterCubit>(context).teamBScore;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 33,
                          ),
                        ),
                        Text(
                          '$teamAScore',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(120, 50),
                          ),
                          onPressed: () {},
                          child: const Text(
                            '1 points',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(120, 50),
                          ),
                          onPressed: () {},
                          child: const Text(
                            '2 points',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            '3 points',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.blue,
                      thickness: 1,
                      endIndent: 50,
                      indent: 50,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 33,
                          ),
                        ),
                        Text(
                          '$teamBScore',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            '1 points',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            '2 points',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            '3 points',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Spacer(
                flex: 2,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(120, 50),
                ),
                onPressed: () {},
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        );
      },
    );
  }
}
