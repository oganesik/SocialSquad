import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskConst {
  static final maskNumberField = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
}
