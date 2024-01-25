// Importing the necessary package for Flutter development
import 'package:flutter/cupertino.dart';

// Annotating the class with @immutable, indicating that its instances are meant to be unchangeable
@immutable
class BasicModel {
  // Constructor for creating an instance of BasicModel with a required 'userName' parameter
  const BasicModel(this.userName);

  // A required property representing the user's name
  final String userName;

  // Overriding the equality operator '=='
  @override
  bool operator ==(covariant BasicModel other) {
    // Checking if the compared objects are identical (reference equality)
    if (identical(this, other)) return true;

    // Comparing the 'userName' property for equality
    return other.userName == userName;
  }

  // Overriding the hashCode getter
  @override
  int get hashCode => super.hashCode;

  // A method for creating a copy of the current instance with optional parameter updates
  BasicModel copyWith({
    String? userName,
  }) {
    // Creating and returning a new instance of BasicModel with updated or unchanged properties
    return BasicModel(userName ?? this.userName);
  }
}
