import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatelessWidget {
  final String? value;
  final void Function(String?) onChanged;
  final String labelText;
  final String hintText;
  final List<DropdownMenuItem<String>> items;

  const CustomDropdownFormField({
    super.key,
    required this.value,
    required this.onChanged,
    required this.labelText,
    this.hintText = "",
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        DropdownButtonFormField<String>(
          value: value,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: labelText,
            border: const OutlineInputBorder(),
          ),
          items: items,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Tidak boleh kosong';
            }
            return null;
          },
        ),
      ],
    );
  }
}
