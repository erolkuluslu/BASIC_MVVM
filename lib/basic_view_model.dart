import 'package:basic_mvvm/basic_model.dart';
import 'package:basic_mvvm/core/basic_cache.dart';

// never write something like show dialog in this class!!
class BasicViewModel{
  BasicViewModel(this.cache);

  final BasicCacheInterface cache;

  Future<bool> controlToUserName(BasicModel model) async {
    await Future.delayed(const Duration(seconds: 2));
    //Service going to respond if the userName is valid or not
    return model.userName.length.isOdd ? true : false;
  }

  void saveUserNameToCache(String userName){

 cache.saveString(userName);
  }

}