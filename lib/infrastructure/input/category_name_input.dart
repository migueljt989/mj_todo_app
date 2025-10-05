import 'package:formz/formz.dart';

enum CategoryNameInputError { empty, length }

class CategoryNameInput extends FormzInput<String, CategoryNameInputError> {
  const CategoryNameInput.pure() : super.pure('');

  const CategoryNameInput.dirty({String value=''}) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == CategoryNameInputError.empty) return 'Field required';
    if (displayError == CategoryNameInputError.length) {
      return 'Must contain at least 3 characters';
    }
    return null;
  }

  @override
  CategoryNameInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return CategoryNameInputError.empty;
    }
    if (value.length < 3) return CategoryNameInputError.length;
    return null;
  }
}
