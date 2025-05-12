import 'package:get_storage/get_storage.dart';

class MyLocalStorage{
  static final MyLocalStorage _instance = MyLocalStorage();

  factory MyLocalStorage(){
    return _instance;
  }

  MyLocalStorage._internal();

  final _storage = GetStorage();


  // Generic method to sava data
  Future<void> saveData<T> (String key, T value)async{
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key){
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key){
    return _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAllData()async{
    await _storage.erase();
  }
}
