import 'package:flutter/foundation.dart';


void main(){

}

class TestNull {
  String? name;

  // TestNull(this.name);

  void getNull() {
    if (kDebugMode) {
      print(name);
    }
    if (kDebugMode) {
      print("Hello");
    }
  }
}


