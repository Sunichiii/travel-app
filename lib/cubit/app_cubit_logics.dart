import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/cubit/app_states.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/welcome_page.dart';

class AppCubitLogics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        } else if(state is LoadedState){
          return HomePage();}
        else if (state is LoadingState) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        else {
          return Container(); // Handle other states properly
        }
      },
    );
  }
}
