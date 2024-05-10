import 'package:firebase_auth/firebase_auth.dart';

class EmailLoginService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        throw Exception('Invalid email or password');
      } else {
        throw Exception(e.message);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
