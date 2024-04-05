import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';

class WChipFilter extends StatelessWidget {
  const WChipFilter({
    required this.icon,
    required this.label,
    this.isSelected = false,
    this.onPressed,
    super.key
  });

  final IconData icon;
  final String label;
  final Function? onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: FilterChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Icon(icon, size: 15, color: isSelected ? Colors.white : theme?.grey3),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        label: WText.labelSmall(label, color: isSelected ? Colors.white : theme?.grey3),
        onSelected: (bool selected) {
          //onPressed!('David got clicked');
        },
        side: BorderSide(
          width: 0,
          color: (theme?.grey4)!
        ),
        // checkmarkColor: theme?.primary,
        selected: false,
        // selectedColor: isSelected ? theme?.primary : theme?.background,
        backgroundColor: isSelected ? theme?.primary /*!.withOpacity(0.1)*/  : theme?.grey5,
        ),
    );
  }
}