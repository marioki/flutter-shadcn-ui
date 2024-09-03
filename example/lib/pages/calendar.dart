import 'package:example/common/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime? selected = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBarTitle: 'Calendar',
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 280),
          child: ShadCalendar(
            selected: selected,
            onChanged: (date) {
              setState(() {
                selected = date;
              });
            },
          ),
        ),
      ],
    );
  }
}
