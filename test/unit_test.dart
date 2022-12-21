// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

Future<void> main() async {
  test('Register', () async {
    final auth = MockFirebaseAuth();
    final result = await auth.createUserWithEmailAndPassword(
        email: 'fahimhaque2@gmail.com', password: '123456');
    print(result.user);
    expect(result.user?.email, 'fahimhaque2@gmail.com');
  });
  test('Login', () async {
    final auth = MockFirebaseAuth();
    final result = await auth.signInWithEmailAndPassword(
        email: 'fahimhaque2@gmail.com', password: '123456');
    print(result.user);
    expect(result.user?.displayName, 'fake_name');
  });

  test('Product addition', () async {
    final instance = FakeFirebaseFirestore();
    await instance.collection('products').add({
      'description': '8x2 3200Mhz',
      'duaration': DateTime(2022),
      'image': 'https://imgur.com/a/lSC2nIu',
      'name': 'Nvidia GTX 3090',
      'price': '1200'
    });
    final snapshot = await instance.collection('products').get();
    print(instance.dump());
    expect(snapshot.docs.first.get('name'), 'Nvidia GTX 3090');
  });
}
