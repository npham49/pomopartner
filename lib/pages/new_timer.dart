import 'package:flutter/material.dart';
import 'package:pomopartner/models/timer_local.dart';

class NewTimerPage extends StatefulWidget {
  const NewTimerPage({super.key});

  @override
  State<NewTimerPage> createState() => _NewTimerPageState();
}

class _NewTimerPageState extends State<NewTimerPage> {
  List<TimerLocal> timers = [
    TimerLocal(1, "Work", 25),
    TimerLocal(2, "Break", 5)
  ];

  int _minutes = 0;
  int _break = 60;
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Text("New Pomodoro Timer"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: const OutlineInputBorder(),
                  hintText: 'Name of the timer: $_name',
                ),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Work Time",
                  border: OutlineInputBorder(),
                  hintText: 'Minutes',
                ),
                onChanged: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      _minutes = 0;
                      _break = 60;
                      return;
                    }
                    _minutes = int.parse(value);
                    _break = 60 - _minutes;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "You will work for $_minutes minutes. Then break for $_break minutes.",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  )),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Add Timer"),
          ),
        ));
  }
}
