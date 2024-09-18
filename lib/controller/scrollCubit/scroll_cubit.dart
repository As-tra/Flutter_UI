import 'package:flutter_bloc/flutter_bloc.dart';

class ScrollCubit extends Cubit<bool> {
  ScrollCubit() : super(true);

  void updateUI() {
    emit(!state);
  }
}
