import 'package:flutter_riverpod/flutter_riverpod.dart';

final slidesProvider = StateProvider.autoDispose<double>((ref) => 0);