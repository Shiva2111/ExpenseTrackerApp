import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerInput extends StatelessWidget {
  const DatePickerInput({
    super.key,
    required this.selectedDate,
    required this.presentDatePicker,
    required this.formatter,
  });

  final DateTime? selectedDate;
  final void Function() presentDatePicker;
  final DateFormat formatter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          selectedDate == null ? 'No Date Selected' : formatter.format(selectedDate!),
        ),
        IconButton(
          onPressed: presentDatePicker,
          icon: const Icon(Icons.calendar_month),
        ),
      ],
    );
  }
}
