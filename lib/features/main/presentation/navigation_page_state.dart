part of 'navigation_page_cubit.dart';

sealed class NavigationPageState extends Equatable {
  const NavigationPageState();

  @override
  List<Object> get props => [];
}

final class NavigationPageUnload extends NavigationPageState {

}

final class NavigationPageLoadSuccess extends NavigationPageState {
  final int pageIndex;

  const NavigationPageLoadSuccess(this.pageIndex);

  @override
  List<Object> get props => [pageIndex];
}