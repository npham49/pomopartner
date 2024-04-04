import 'package:flutter/material.dart';
import 'package:pomopartner/models/timer_local.dart';

class PomodoroIcon extends StatelessWidget {
  const PomodoroIcon({super.key, required this.time});
  final TimerLocal time;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var remainingTime = 60 - time.minutes;
    return Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurStyle: BlurStyle.outer,
              spreadRadius: 1,
              blurRadius: 15,
            ),
          ],
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.17,
          child: Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.25,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.23,
                          height: MediaQuery.of(context).size.width * 0.23,
                          margin: const EdgeInsets.all(4),
                          child: CircularProgressIndicator(
                            strokeWidth: 10,
                            value: time.minutes / 60,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Theme.of(context).colorScheme.primary),
                            backgroundColor: const Color(0xFF32292C),
                          ),
                        ),
                      ),
                      Center(
                          child: Text("${time.minutes}\n$remainingTime",
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFB3AC74)))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(time.name,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB3AC74))),
              ),
            ],
          )),
        ));
  }
}
