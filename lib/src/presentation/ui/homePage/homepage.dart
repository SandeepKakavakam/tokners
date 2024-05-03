
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';


import '../../base/bloc_page/base_page_state.dart';
import 'bloc/bloc/homepage_bloc.dart';
import 'components/headcomponent.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends BasePageState<Homepage, HomePageBloc> {
  @override
  Widget buildPage(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: ColorName.background,
      body: SingleChildScrollView(
          child: Column(
            children: [
              HeadComponent(deviceType: deviceType),
            ],
          )
      ),
    );
  }
}
