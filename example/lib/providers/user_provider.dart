import 'package:example/models/user.dart';
import 'package:remote_data_provider/basic_data_provider.dart';

class UserProvider extends BasicDataProvider<User> {
  @override
  Future<User> onFetch() async {
    // simulate loading state
    await Future.delayed(const Duration(seconds: 3));
    
    final user = await User.fetchUser();
    return user;
  }

  @override
  Future<User> onUpdate(User newData) async {
    return newData;
  }
}
