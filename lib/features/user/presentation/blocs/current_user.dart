import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';

UserModel? get user {
  CurrentUserBloc bloc = get();
  if (bloc.state is CurrentUserLoadSuccess) {
    return (bloc.state as CurrentUserLoadSuccess).user;
  }

  return null;
}