import 'package:flutter/material.dart';

import 'package:tokner/app.dart';

import '../../base/bloc_page/base_page_state.dart';
import 'bloc/bloc/homepage_bloc.dart';
import 'components/cardscomponent.dart';
import 'components/comingcomponent.dart';
import 'components/footercomponent.dart';
import 'components/headcomponent.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends BasePageState<Homepage, HomePageBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.background,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadComponent(),
          HomeCardsComponent(),
          HomeToknerComponent(),
          HomeFooterComponent()
        ],
      )),
    );
  }
}
