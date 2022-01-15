import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';

class UserBloc implements Bloc{
  final _auth_repository = AuthRepository();

  // Data flow
  // stream - firebase
  // StreamController
  Stream<User> streamFireabase = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => streamFireabase;

  // User cases
  // 1. SignIn to the app
  Future<UserCredential> signIn(){
    return _auth_repository.signInFirebase();
  }

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}