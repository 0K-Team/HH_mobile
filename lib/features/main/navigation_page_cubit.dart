import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_page_state.dart';

class NavigationPageCubit extends Cubit<NavigationPageState> {
  NavigationPageCubit() : super(NavigationPageUnload());

  void changePage(int pageIndex) {
    emit(NavigationPageLoadSuccess(pageIndex));
  }
}
