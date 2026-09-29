/// LOCAL MOCK of Firebase Auth for the web demo (no Firebase project is
/// bundled). Accounts live only in memory for the current browser session.
class MockAuth {
  static final Map<String, String> _users = {};

  static Future<void> register(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 400));
    if (password.length < 6) {
      throw Exception('Password should be at least 6 characters');
    }
    if (_users.containsKey(email.toLowerCase())) {
      throw Exception('The email address is already in use by another account.');
    }
    _users[email.toLowerCase()] = password;
  }

  static Future<void> signIn(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 400));
    if (_users[email.toLowerCase()] != password) {
      throw Exception('Invalid email or password (demo: register first).');
    }
  }
}
