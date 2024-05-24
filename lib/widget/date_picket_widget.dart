import 'package:flutter/material.dart';

Future<String?> selectDate(BuildContext context) async {
  DateTime? selectedDate = await showDatePicker(
    context: context,
    confirmText: 'Pilih',
    cancelText: 'Batal',
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            primary: Colors.blue,
            onPrimary: Colors.black,
            surface: Colors.white,
            onSurface: Colors.black,
          ),
          dialogBackgroundColor: Colors.white,
        ),
        child: child!,
      );
    },
  );

  if (selectedDate != null) {
    String formattedDate =
        '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
    return formattedDate;
  }
  return null;
}
