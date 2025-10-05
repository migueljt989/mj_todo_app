import 'package:formz/formz.dart';
import 'package:mj_todo_app/domain/entities/selected_icon_data.dart';

enum CategoryIconInputError { empty }

class CategoryIconInput
    extends FormzInput<SelectedIconData?, CategoryIconInputError> {
  const CategoryIconInput.pure() : super.pure(null);
  const CategoryIconInput.dirty(SelectedIconData value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == CategoryIconInputError.empty) {
      return 'Must select an icon';
    }
    return null;
  }

  @override
  CategoryIconInputError? validator(SelectedIconData? value) {
    if (value == null) return CategoryIconInputError.empty;
    return null;
  }
}
