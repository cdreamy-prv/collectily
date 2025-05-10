import 'package:collectily/logic/models/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('UserModel should have default values', () {
    // Arrange
    final user = User(
      displayName: 'Moritz',
      createdAt: DateTime.now().toString(),
    );

    // Act & Assert
    expect(user.id, null);
    expect(user.displayName, 'Moritz');
    expect(user.userName, null);
    expect(user.email, null);
    expect(user.password, null);
    expect(user.imageUrl, null);
    expect(user.createdAt, isNotNull);
    expect(user.updatedAt, null);
  });

  // Test the copyWith method

  test('UserModel should be updatable with copyWith', () {
    // Arrange
    final user = User(
      displayName: 'Moritz',
      createdAt: DateTime.now().toString(),
    );

    final updatedUser = user.copyWith(
      displayName: 'Kuschelkater',
      id: 1,
      userName: 'Moritz-Kuschelkater24',
      email: 'moritz-kuschelkater24@hotmail.de',
      password: 'Passwort',
      imageUrl: 'https://example.com/image.jpg',
      updatedAt: DateTime.now().toString(),
    );

    expect(updatedUser.id, 1);
    expect(updatedUser.displayName, 'Kuschelkater');
    expect(updatedUser.userName, 'Moritz-Kuschelkater24');
    expect(updatedUser.email, 'moritz-kuschelkater24@hotmail.de');
    expect(updatedUser.password, 'Passwort');
    expect(updatedUser.imageUrl, 'https://example.com/image.jpg');
    expect(updatedUser.createdAt, user.createdAt);
    expect(updatedUser.updatedAt, isNotNull);
  });

  // Test the fromJson method
}
