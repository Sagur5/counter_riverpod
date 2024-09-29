// ignore_for_file: unused_import

import 'package:counter_riverpod/riverpod_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverpodEasylevel = StateProvider<int>((ref) {
  return 0;
});
final riverpodHardLevel = ChangeNotifierProvider<RiverpodModel>((ref) {
return RiverpodModel(counter : 0);
});

