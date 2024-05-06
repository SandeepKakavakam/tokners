import 'package:flutter/cupertino.dart';

import '../../../../base/bloc/base_bloc_event.dart';



@immutable
abstract class HomePageEvent extends BaseBlocEvent {
  const HomePageEvent();
}

class IsExpanded extends HomePageEvent{}