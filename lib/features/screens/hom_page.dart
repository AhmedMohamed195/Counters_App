import 'package:basketball_counter_app/features/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/features/widget/custom_teams.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orange,
            title: Text(
              'Points Counter',
              style: TextStyle(fontSize: screenWidth * 0.08),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: screenHeight * 0.6,
                    child: CustomTeams(
                      text1: "Team A",
                      text2: "${state.teamAPoints}",
                      onPressed1: () {
                        BlocProvider.of<CounterCubit>(
                          context,
                        ).teamIncement(team: "A", buttonNumbers: 1);
                      },
                      onPressed2: () {
                        BlocProvider.of<CounterCubit>(
                          context,
                        ).teamIncement(team: "A", buttonNumbers: 2);
                      },
                      onPressed3: () {
                        BlocProvider.of<CounterCubit>(
                          context,
                        ).teamIncement(team: "A", buttonNumbers: 3);
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.6,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.6,
                    child: CustomTeams(
                      text1: "Team B",
                      text2: '${state.teamBPoints}',
                      onPressed1: () {
                        BlocProvider.of<CounterCubit>(
                          context,
                        ).teamIncement(team: "B", buttonNumbers: 1);
                      },
                      onPressed2: () {
                        BlocProvider.of<CounterCubit>(
                          context,
                        ).teamIncement(team: "B", buttonNumbers: 2);
                      },
                      onPressed3: () {
                        BlocProvider.of<CounterCubit>(
                          context,
                        ).teamIncement(team: "B", buttonNumbers: 3);
                      },
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(screenWidth * 0.015),
                  backgroundColor: Colors.orange,
                  minimumSize: Size(screenWidth * 0.35, screenHeight * 0.06),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
