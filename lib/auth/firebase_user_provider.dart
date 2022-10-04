import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EtwelveAdminFirebaseUser {
  EtwelveAdminFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EtwelveAdminFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EtwelveAdminFirebaseUser> etwelveAdminFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EtwelveAdminFirebaseUser>(
            (user) => currentUser = EtwelveAdminFirebaseUser(user));
