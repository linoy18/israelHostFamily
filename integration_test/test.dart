import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:families_host/main.dart';
import 'package:families_host/flutter_flow/flutter_flow_util.dart';

import 'package:families_host/backend/firebase/firebase_config.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('firrstPageTest', (WidgetTester tester) async {
    _overrideOnError();
    await initFirebase();
    await FirebaseAuth.instance.signOut();

    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'linoy18@gmail.com', password: '123456');
    await tester.pumpWidget(MyApp());

    await tester.enterText(find.byKey(ValueKey('name_4hv2')), 'Hello World');
    await tester.enterText(
        find.byKey(ValueKey('createProperty_1_5hmq')), 'Hello World2');
    await tester.enterText(find.byKey(ValueKey('area_n9u6')), 'Hello World3');
    await tester.enterText(
        find.byKey(ValueKey('createProperty_1_5hmq')), 'Hello World4');
    await tester.tap(find.byKey(ValueKey('null_gsj4')));
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
