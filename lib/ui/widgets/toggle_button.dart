import 'package:flutter/material.dart';
import 'package:random_user/ui/widgets/text_widgets.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);

  final List<WhiteTexttWidget> text;
  final List<bool> selected;


  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: text,
      isSelected: selected,
    );
  }
}
