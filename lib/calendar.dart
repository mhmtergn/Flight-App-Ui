import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';

import 'constants/constant.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  final Map<DateTime, List<CleanCalendarEvent>> _events = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      CleanCalendarEvent('Turkish Airlines',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 02, 10),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 05, 20),
          description: 'Direct-Flight',
          color: Colors.blue.shade700),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
        [
      CleanCalendarEvent('Air Serbia',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 18, 20),
          description: '2 stop',
          color: Colors.orange),
      CleanCalendarEvent('Air Serbia',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 00),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 22, 20),
          description: '2 stop',
          color: Colors.pink),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 3):
        [
      CleanCalendarEvent('Plish Airlines',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      CleanCalendarEvent('British Airways',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
      CleanCalendarEvent('Aeroflot',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.amber),
      CleanCalendarEvent('SkyUp',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.deepOrange),
      CleanCalendarEvent('Pegasus',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.green),
      CleanCalendarEvent('Ukraine Intl',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.indigo),
      CleanCalendarEvent('Qatar Airways',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.brown),
    ],
  };

  @override
  void initState() {
    super.initState();
    // Force selection of today on first load, so that the list of today's events gets shown.
    _handleNewDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Calendar(
          startOnMonday: true,
          weekDays: ['Mo', 'Tue', 'Wed', 'Thu', 'Fr', 'Sa', 'Su'],
          events: _events,
          isExpandable: true,
          eventDoneColor: Colors.transparent,
          selectedColor: Colors.pink,
          todayColor: Colors.deepOrange,
          eventColor: Colors.grey,
          locale: 'en_En',
          todayButtonText: 'Today',
          isExpanded: true,
          expandableDateFormat: 'EEEE, dd. MMMM yyyy',
          dayOfWeekStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
        ),
      ),
    );
  }

  void _handleNewDate(date) {
    print('Date selected: $date');
  }
}
