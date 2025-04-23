import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeBloc extends Cubit<bool> {
  ThemeBloc() : super(true);

  changeTheme(bool v) {
    emit(v);
  }
}
