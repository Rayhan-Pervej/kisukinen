import 'package:flutter/material.dart';
import 'package:kisukinen/theme/color.dart';

class SelectSizeButton extends StatefulWidget {
  final List<String> sizes;
  final void Function(String selectedSize)? onSizeSelected;
  final String? initialSize;

  const SelectSizeButton({
    super.key,
    required this.sizes,
    this.onSizeSelected,
    this.initialSize,
  });

  @override
  State<SelectSizeButton> createState() => _SelectSizeButtonState();
}

class _SelectSizeButtonState extends State<SelectSizeButton> {
  String? _selectedSize;

  @override
  void initState() {
    super.initState();
    _selectedSize =
        widget.initialSize ?? widget.sizes.first; // Default to the first size
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8.0,
        children: widget.sizes.map((size) {
          final bool isSelected = size == _selectedSize;
          return ChoiceChip(
            backgroundColor: MyColor.white,
            label: Text(
              size,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.black, // Text color
                fontWeight: FontWeight.bold,
              ),
            ),
            selected: isSelected,
            selectedColor: MyColor.yellow, // Background color when selected
            onSelected: (selected) {
              setState(() {
                _selectedSize = size;
              });
              if (widget.onSizeSelected != null) {
                widget.onSizeSelected!(size);
              }
            },
          );
        }).toList(),
      ),
    );
  }
}
