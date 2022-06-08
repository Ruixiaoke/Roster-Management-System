import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RosterManagementSystemFirebaseUser {
  RosterManagementSystemFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

RosterManagementSystemFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RosterManagementSystemFirebaseUser>
    rosterManagementSystemFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RosterManagementSystemFirebaseUser>(
            (user) => currentUser = RosterManagementSystemFirebaseUser(user));
