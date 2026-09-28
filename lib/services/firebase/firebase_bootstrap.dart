/// Contract for starting Firebase.
///
/// Authentication, Firestore, and Storage are not wired in this phase.
abstract interface class FirebaseBootstrap {
  Future<void> initialize();
}
