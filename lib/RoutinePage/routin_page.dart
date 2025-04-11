import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';





class RoutinePage extends StatefulWidget {
  const RoutinePage({super.key});

  @override
  _RoutinePageState createState() => _RoutinePageState();
}

class _RoutinePageState extends State<RoutinePage> {
  final _formKey = GlobalKey<FormState>();
  final _sectionController = TextEditingController();
  final _titleController = TextEditingController();
  final _locationController = TextEditingController();
  TimeOfDay? _selectedTime;
  List<Map<String, String>> _routines = [];

  @override
  void initState() {
    super.initState();
    _loadRoutines();
  }

  Future<void> _loadRoutines() async {
    final prefs = await SharedPreferences.getInstance();
    final routineData = prefs.getStringList('routines') ?? [];
    setState(() {
      _routines = routineData.map((item) => Map<String, String>.from(Map.castFrom(jsonDecode(item)))).toList();
    });
  }

  Future<void> _saveRoutines() async {
    final prefs = await SharedPreferences.getInstance();
    final routineData = _routines.map((item) => jsonEncode(item)).toList();
    await prefs.setStringList('routines', routineData);
  }

  void _setAlarm(int id, TimeOfDay time) async {
    final now = DateTime.now();
    final alarmTime = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    if (alarmTime.isBefore(now)) {
      return; // Alarm won't trigger if it's a past time
    }
    await AndroidAlarmManager.oneShotAt(
      alarmTime,
      id,
      _alarmCallback,
      exact: true,
      wakeup: true,
    );
  }

  static void _alarmCallback() {
    print("Alarm triggered!");
  }

  Future<void> _addRoutine() async {
    if (_formKey.currentState!.validate() && _selectedTime != null) {
      final newRoutine = {
        "section": _sectionController.text,
        "title": _titleController.text,
        "location": _locationController.text,
        "time": _selectedTime!.format(context),
      };

      setState(() {
        _routines.add(newRoutine);
      });

      await _saveRoutines();
      _setAlarm(_routines.length, _selectedTime!);

      _sectionController.clear();
      _titleController.clear();
      _locationController.clear();
      _selectedTime = null;
    }
  }

  void _selectTime() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  @override
  void dispose() {
    _sectionController.dispose();
    _titleController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Routine with Alarm')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _sectionController,
                    decoration: const InputDecoration(labelText: 'Section'),
                    validator: (value) => value == null || value.isEmpty ? 'Enter section' : null,
                  ),
                  TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(labelText: 'Course Title'),
                    validator: (value) => value == null || value.isEmpty ? 'Enter course title' : null,
                  ),
                  TextFormField(
                    controller: _locationController,
                    decoration: const InputDecoration(labelText: 'Location'),
                    validator: (value) => value == null || value.isEmpty ? 'Enter location' : null,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          _selectedTime == null ? 'No Time Selected' : 'Selected Time: ${_selectedTime!.format(context)}',
                        ),
                      ),
                      TextButton(
                        onPressed: _selectTime,
                        child: const Text('Select Time'),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: _addRoutine,
                    child: const Text('Add Routine'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _routines.length,
                itemBuilder: (context, index) {
                  final routine = _routines[index];
                  return Card(
                    child: ListTile(
                      title: Text(routine['title'] ?? ''),
                      subtitle: Text(
                        'Section: ${routine['section']}\nLocation: ${routine['location']}\nTime: ${routine['time']}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
