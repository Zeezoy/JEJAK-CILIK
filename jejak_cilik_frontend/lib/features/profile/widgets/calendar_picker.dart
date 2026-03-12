import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<String?> showCalendarPicker(BuildContext context) async {

  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime(2016),
    firstDate: DateTime(2000),
    lastDate: DateTime.now(),

    builder: (context, child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            primary: Color(0xFFFFA726),
          ),
        ),
        child: child!,
      );
    },
  );

  if (pickedDate == null) return null;

  return DateFormat('dd/MM/yyyy').format(pickedDate);
}