import 'package:flutter/material.dart';

import 'app/app.dart';
import 'bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(
    builder: (apiService) {
      return MyApp(
        apiSerivce: apiService,
      );
    },
  );
}
