
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final userNotifierProvider = AutoDisposeNotifierProvider<UserNotifier, String>(UserNotifier.new);

class UserNotifier extends AutoDisposeNotifier<String>{
  @override
  String build() {
    final KeepAlive = ref.keepAlive();
    Timer? timer;

    ref.onDispose((){
        timer?.cancel();
    });

    ref.onCancel((){
       timer = Timer(const Duration(seconds: 10), (){
          KeepAlive.close();
       });
    });

    ref.onResume((){
      timer?.cancel();
    });
    return '-';
  
  }

  void update (String value) {
    state = value;
  }

}