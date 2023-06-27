import 'package:get_it/get_it.dart';
import 'package:trackbudi_mobile/src/config/service/storage/local_storage.dart';

GetIt locator = GetIt.instance;
Future setUpLocator() async {
  var instance = await LocalStorageService.getInstance();
  locator.registerSingleton<LocalStorageService>(instance);
}
