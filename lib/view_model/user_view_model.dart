
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_beginner/state/user_state.dart';

final userProvider = NotifierProvider<UserViewModel, UserState>(UserViewModel.new);

class UserViewModel extends Notifier<UserState> {
  @override
  UserState build() {
   return const UserState(isloding: true);
  }

}